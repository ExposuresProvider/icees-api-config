from deepdiff import DeepDiff
import yaml
import dhall
import os.path
import sys
from collections import defaultdict

class keydefaultdict(defaultdict):
    def __missing__(self, key):
        if self.default_factory is None:
            raise KeyError( key )
        else:
            while key.endswith("Visit"):
                key = key[:-5]
            while key.endswith("_qcut"):
                key = key[:-4]
            if key in self:
                return self[key]
            else:
                ret = self[key] = self.default_factory(key)
                return ret


def convert_feature(feature):
    if feature["type"] == "string":
        enum = feature.get("enum")
        feature_type = {
            "__constructor": "ICEESAPIType.String",
            "__argument": {
                "enum": enum
            }
        }
        if enum is not None and {"0", "1", ">1"} == set(enum):            
            binning_strategies = [{
                "method": {
                    "__constructor": "Bins",
                    "__argument": {
                        "__constructor": "RangeBins",
                        "__argument": {
                            "bins" : [0, 1, 2, {
                                "__infinity": None
                            }],
                            "right" : False,
                            "include_lowest" : True,
                            "labels" : ["0", "1", ">1"]
                        }
                    }
                }
            }]
        else:
            binning_strategies = [{
                "method": {
                    "__constructor": "NoBinning"
                }
            }]            
    elif feature["type"] == "integer":
        maximum = feature.get("maximum")
        minimum = feature.get("minimum")
        feature_type = {
            "__constructor": "ICEESAPIType.Integer",
            "__argument": {
                "maximum": maximum,
                "minimum": minimum
            }
        }
        if maximum is not None and minimum is not None and minimum == 1:
            binning_strategies = [{
                "method": {
                    "__construction": "Cut",
                    "__argument": maximum
                }
            }, {
                "method": {
                    "__construction": "QCut",
                    "__argument": maximum
                },
                "suffix": "_qcut"
            }]
        else:
            binning_strategies = [{
                "method": {
                    "__constructor": "NoBinning"
                }
            }]
    elif feature["type"] == "number":
        feature_type = {
            "__constructor": "ICEESAPIType.Number",
        }
        binning_strategies = [{
            "method": {
                "__constructor": "NoBinning"
            }
        }]
    else:
        raise ValueError("Cannot parse type " + feature["type"])
        
    return {
        "feature_type": feature_type,
        "categories": feature["categories"]
    }, binning_strategies

    
def add_key_value_pair(variable, key, value):
    while key in variable:
        ddiff = DeepDiff(variable[key], value)
        if len(ddiff) == 0:
            return
        else:
            if all("added" in act and all("categories" in path for path in param.keys()) for act, param in ddiff.items()):
                break
            elif all("removed" in act and all("categories" in path for path in param.keys()) for act, param in ddiff.items()):
                return
            else:
                print(f"diff: {variable['name']}")
        key = key + "_alt"

    variable[key] = value


def convert_fhir_mapping(fhir_mapping):
    all_matches = []
    for resource_type, codings in fhir_mapping.items():
        all_matches.extend({
            "resource": resource_type,
            **coding
        } for coding in codings)
    return {
        "__constructor": "Mapping.GenericFHIRMapping",
        "__argument": all_matches
    }

        
def convert_nearest_x_feature_type(feature_type):
    return {"__constructor": {"integer": "FeatureType.Integer", "string": "FeatureType.String", "number": "FeatureType.Number"}[feature_type]}


def convert(all_features_input_file_path, identifiers_input_file_path, fhir_mappings_input_file_path, variables_output_dir_path):
    with open(all_features_input_file_path) as f:
        all_features = yaml.safe_load(f)

    with open(identifiers_input_file_path) as f2:
        identifiers = yaml.safe_load(f2)
    
    with open(fhir_mappings_input_file_path) as f3:
        fhir_mappings = yaml.safe_load(f3)
    
    variables = keydefaultdict(lambda key: {
        "name": key
    })

    for table_name, features in all_features.items():
        for feature_name, feature in features.items():
            converted_feature, binning_strategies = convert_feature(feature)
            variable = variables[feature_name]
            add_key_value_pair(variable, "feature", converted_feature)
            add_key_value_pair(variable, "binning_strategies", binning_strategies)


    for table_name, table_identifiers in identifiers.items():
        for feature_name, feature_identifiers in table_identifiers.items():
            variable = variables[feature_name]
            add_key_value_pair(variable, "identifiers", feature_identifiers)


    for feature_name, fhir_mapping in fhir_mappings.get("FHIR", {}).items():
        converted_fhir_mapping = convert_fhir_mapping(fhir_mapping)
        variable = variables[feature_name]
        add_key_value_pair(variable, "mapping", converted_fhir_mapping)


    for geoid_dataset_name, geoid_dataset_mapping in fhir_mappings["GEOID"].items():
        for column_name, feature_name in geoid_dataset_mapping["columns"].items():
            variables[feature_name] = {
                "__constructor": "Mapping.GEOIDMapping",
                "__argument": {
                    "dataset": geoid_dataset_name,
                    "column": column_name,
                    "datatype": {
                        "__constructor": "String"
                    }
                }
            }


    for nearest_road_dataset_name, nearest_road_dataset_mapping in fhir_mappings["NearestRoad"].items():
        variables[nearest_road_dataset_mapping["distance_feature_name"]] = {
            "__constructor": "Mapping.NearestFeatureMapping",
            "__argument": {
                "__constructor": "NearestMapping.Distance",
                "__argument": {
                    "dataset": nearest_road_dataset_name,
                    "maximum": 500
                }
            }
        }
        for attribute_name, feature in nearest_road_dataset_mapping["attributes_to_features_map"].items():
            feature_type = feature["feature_type"]
            datatype = convert_nearest_x_feature_type(feature_type)
            variables[feature["feature_name"]] = {
                "__constructor": "Mapping.NearestFeatureMapping",
                "__argument": {
                    "__constructor": "NearestMapping.Attribute",
                    "__argument": {
                        "dataset": nearest_road_dataset_name,
                        "name": attribute_name,
                        "datatype": datatype,
                        "maximum": 500
                    }
                }
            }


    for nearest_point_dataset_name, nearest_point_dataset_mapping in fhir_mappings["NearestPoint"].items():
        variables[nearest_road_dataset_mapping["distance_feature_name"]] = {
            "__constructor": "Mapping.NearestPointMapping",
            "__argument": {
                "__constructor": "NearestMapping.Distance",
                "__argument": {
                    "dataset": nearest_point_dataset_name,
                    "maximum": 500
                }
            }
        }
        for attribute_name, feature in nearest_point_dataset_mapping["attributes_to_features_map"].items():
            feature_type = feature["feature_type"]
            datatype = convert_nearest_x_feature_type(feature_type)
            variables[feature["feature_name"]] = {
                "__constructor": "Mapping.NearestPointMapping",
                "__argument": {
                    "__constructor": "NearestMapping.Attribute",
                    "__argument": {
                        "dataset": nearest_point_dataset_name,
                        "name": attribute_name,
                        "datatype": datatype,
                        "maximum": 500
                    }
                }
            }

    package = {}
    for variable_name, variable in variables.items():
        categories = []
        key = "feature"
        while key in variable:
            categories = variable[key].get("categories", [])
            if len(categories) == 0:
                key += "_alt"
            else:
                break
            
        if len(categories) == 0:
            dir_name = "Uncategorized"
        else:
            dir_name = categories[0]
        file_name = f"{variable_name}.dhall"
        variable_output_dir_path = os.path.join(variables_output_dir_path, dir_name)
        variable_output_file_path = os.path.join(variable_output_dir_path, file_name)

        package[variable_name] = {
            "__import": f"./{dir_name}/{file_name}"
        }
        os.makedirs(variable_output_dir_path, exist_ok=True)
        print(f"writing to {variable_output_file_path}")
        with open(variable_output_file_path, "w") as vof:
            dhall.dump({
                "__let": {
                    "meta": {
                        "__import": "../../dhall/meta.dhall"
                    },
                    **{
                        k: {
                            "__import": f"meta.{k}"
                        } for k in ["ICEESAPIType", "Mapping", "NearestMapping", "SpecializedFHIRMapping", "FeatureType", "Bins", "BinningMethod"]
                    }
                },
                "__in": variable
            }, vof)

    with open(os.path.join(variables_output_dir_path, "package.json"), "w") as pof:
        dhall.dump(package, pof)


if __name__ == "__main__":
    all_features_input_file_path, identifiers_input_file_path, fhir_mappings_input_file_path, variables_output_dir_path = sys.argv[1:]

    convert(all_features_input_file_path, identifiers_input_file_path, fhir_mappings_input_file_path, variables_output_dir_path)


                        





        
