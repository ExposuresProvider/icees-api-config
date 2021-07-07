from deepdiff import DeepDiff
import yaml
import dhall
from dhall import construct, application, identifier, positive_infinity, negative_infinity, let, imp, ascribe, record_completion, extract_identifiers
import dhall
import os.path
import sys
from collections import defaultdict
from copy import deepcopy
import tx.functional.maybe as maybe

class keydefaultdict(defaultdict):
    def __missing__(self, key):
        if self.default_factory is None:
            raise KeyError( key )
        else:
            if key in self:
                return self[key]
            else:
                ret = self[key] = self.default_factory(key)
                return ret


def remove_bin_suffix(key):
    while key.endswith("Visit"):
        key = key[:-5]
    while key.endswith("_qcut"):
        key = key[:-5]
    return key


def normalize_feature_name(key):
    key = remove_bin_suffix(key)
    while key.endswith("_StudyAvg"):
        key = key[:-9]
    while key.endswith("_StudyMax"):
        key = key[:-9]
    if "24h" in key and "Exposure" in key:
        key = key.replace("24h", "Daily")
    return key


def convert_feature(feature):
    if feature["type"] == "string":
        enum = feature.get("enum")
        if enum is None:
            feature_type = identifier("string")
        else:
            feature_type = application(identifier("enum"), enum)

        if enum is not None and {"0", "1", ">1"} == set(enum):            
            binning_strategies = [(application(
                    identifier("range_bins"),
                    {
                        "bins" : [0.0, 1.0, 2.0, positive_infinity],
                        "right" : False,
                        "include_lowest" : True,
                        "labels" : ["0", "1", ">1"]
                    }
                ),
                ""
            )]
        else:
            binning_strategies = None
    elif feature["type"] == "integer":
        maximum = feature.get("maximum")
        minimum = feature.get("minimum")
        if maximum is None and minimum is None:
            feature_type = identifier("integer")
        else:
            feature_type = application(identifier("range"), minimum, maximum)

        if maximum is not None and minimum is not None and minimum == 1:
            binning_strategies = [(application(
                    identifier("qcut"),
                    maximum
                ),
                ""
            ), (application(
                    identifier("qcut"),
                    maximum
                ),
                "_qcut"
            )]
        else:
            binning_strategies = None
    elif feature["type"] == "number":
        feature_type = identifier("number")
        binning_strategies = None
    else:
        raise ValueError("Cannot parse type " + feature["type"])

    categories = feature["categories"]
    return {
        "feature_type": feature_type,
        "categories": identifier("no_categories") if len(categories) == 0 else feature["categories"]
    }, binning_strategies


def copy(a, n):
    a = deepcopy(a)
    a["name"] = n
    return a


def deep_merge(a, b):
    a_normalized = a
    b_normalized = b
    if isinstance(a, dict):
        if len(DeepDiff(a, identifier("no_categories"))) == 0:
            a_normalized = []
        elif len(DeepDiff(a, identifier("no_identifiers"))) == 0:
            a_normalized = []
    if isinstance(b, dict):
        if len(DeepDiff(b, identifier("no_categories"))) == 0:
            b_normalized = []
        elif len(DeepDiff(b, identifier("no_identifiers"))) == 0:
            b_normalized = []
    if isinstance(a_normalized, dict) and isinstance(b_normalized, dict):
        merged = {}
        for akey, aval in a.items():
            if akey in b:
                merged_val = deep_merge(aval, b[akey])
                if merged_val is not None:
                    merged[akey] = merged_val
                else:
                    return None
            else:
                merged[akey] = aval
        for bkey, bval in b.items():
            if bkey not in a:
                merged[bkey] = bval
        return merged
    elif isinstance(a_normalized, list) and isinstance(b_normalized, list):
        if isinstance(a, dict):
            return b
        elif isinstance(b, dict):
            return a
        merged = list(a)
        for belem in b:
            if belem not in a:
                merged.append(belem)
        return merged
    elif a == b:
        return b
    else:
        return None

            
def add_key_value_pair(variable, key, value):
    while key in variable:
        merged_value = deep_merge(variable[key], value)
        # if len(DeepDiff(merged_value, value)) != 0 or len(DeepDiff(merged_value, value)) != 0:
        #     print(f"deep mmerge\n{variable[key]}\n{value}\n{merged_value}")
        if merged_value is not None:
            value = merged_value
            break
        else:
            key = key + "_alt"
    variable[key] = value


def convert_fhir_mapping(fhir_mapping):
    all_matches = []
    for resource_type, codings in fhir_mapping.items():
        all_matches.extend({
            "resource": resource_type,
            "code_is_regex": False,
            "system_is_regex": False,
            **coding
        } for coding in codings)
    return application(
        identifier("generic_fhir_mapping"),
        all_matches
    )

        
def convert_nearest_x_feature_type(feature_type):
    return identifier({"integer": "integer", "string": "string", "number": "number"}[feature_type])


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

    for table_name, table_identifiers in identifiers.items():
        for feature_name, feature_identifiers in table_identifiers.items():
            feature_name2 = normalize_feature_name(feature_name)
            print("normalized: " + feature_name2)
            variable = variables[feature_name2]
            add_key_value_pair(variable, "identifiers", identifier("no_identifiers") if len(feature_identifiers) == 0 else feature_identifiers)


    for feature_name, fhir_mapping in fhir_mappings.get("FHIR", {}).items():
        feature_name2 = normalize_feature_name(feature_name)
        print("normalized: " + feature_name2)
        converted_fhir_mapping = convert_fhir_mapping(fhir_mapping)
        variable = variables[feature_name2]
        add_key_value_pair(variable, "mapping", converted_fhir_mapping)


    for geoid_dataset_name, geoid_dataset_mapping in fhir_mappings["GEOID"].items():
        for column_name, feature_name in geoid_dataset_mapping["columns"].items():
            feature_name2 = normalize_feature_name(feature_name)
            variable = variables[feature_name2]
            add_key_value_pair(variable, "mapping", construct(
                "geoid_mapping",
                {
                    "dataset": geoid_dataset_name,
                    "column": column_name,
                    "datatype": identifier("string")
                }
            ))


    for nearest_road_dataset_name, nearest_road_dataset_mapping in fhir_mappings["NearestRoad"].items():
        feature_name = nearest_road_dataset_mapping["distance_feature_name"]
        feature_name2 = normalize_feature_name(feature_name)
        distance_variable = variables[feature_name2]
        add_key_value_pair(distance_variable, "mapping", application(
            identifier("nearest_point_distance"),
            {
                "dataset": nearest_road_dataset_name,
                "maximum": 500.0
            }
        ))
        for attribute_name, feature in nearest_road_dataset_mapping["attributes_to_features_map"].items():
            feature_type = feature["feature_type"]
            datatype = convert_nearest_x_feature_type(feature_type)
            feature_name = feature["feature_name"]
            feature_name2 = normalize_feature_name(feature_name)
            variable = variables[feature_name2]
            add_key_value_pair(variable, "mapping", application(
                identifier("nearest_feature_attribute"),
                {
                    "dataset": nearest_road_dataset_name,
                    "name": attribute_name,
                    "datatype": datatype
                }
            ))


    for nearest_point_dataset_name, nearest_point_dataset_mapping in fhir_mappings["NearestPoint"].items():
        feature_name = nearest_road_dataset_mapping["distance_feature_name"]
        feature_name2 = normalize_feature_name(feature_name)
        distance_variable = variables[feature_name2]
        add_key_value_pair(distance_variable, "mapping", application(
            identifier("nearest_point_distance"),
            {
                "dataset": nearest_point_dataset_name,
                "maximum": 500.0
            }
        ))
        for attribute_name, feature in nearest_point_dataset_mapping["attributes_to_features_map"].items():
            feature_type = feature["feature_type"]
            datatype = convert_nearest_x_feature_type(feature_type)
            feature_name = feature["feature_name"]
            feature_name2 = normalize_feature_name(feature_name)
            variable = variables[feature_name2]
            add_key_value_pair(variable, "mapping", application(
                idenfitier("nearest_point_attribute"),
                {
                    "dataset": nearest_point_dataset_name,
                    "name": attribute_name,
                    "datatype": datatype
                }
            ))

    for variable_name, variable in variables.items():
        if "Daily" in variable_name and "Exposure" in variable_name:
            mapping = application(identifier("environmental_mapping"), {
                "dataset": "cmaq2" if "_2" in variable_name else "cmaq",
                "column": variable_name,
            })
            add_key_value_pair(variable, "mapping", mapping)

    update_vars = {}
    for variable_name, variable in variables.items():
        if "Daily" in variable_name and "Exposure" in variable_name:
            if "_2" in variable_name:
                statistic = identifier("avg")
                statistic_variable = copy(variable, variable_name)
                update_vars[variable_name] = statistic_variable
                add_key_value_pair(statistic_variable, "statistic", statistic)
            else:
                statistics = [(identifier("avg"),
                    "_StudyAvg"
                ), (identifier("max"),
                    "_StudyMax"
                )]
                for statistic, suffix in statistics:
                    variable_name2 = variable_name + suffix
                    statistic_variable = copy(variable, variable_name2)
                    update_vars[variable_name2] = statistic_variable
                    add_key_value_pair(statistic_variable, "statistic", statistic)

            statistic = identifier("prev_date")
            variable_name2 = variable_name.replace("Daily", "24h")
            statistic_variable = copy(variable, variable_name2)
            update_vars[variable_name2] = statistic_variable
            add_key_value_pair(statistic_variable, "statistic", statistic)
    variables.update(update_vars)

    for table_name, features in all_features.items():
        for feature_name, feature in features.items():
            feature_name = remove_bin_suffix(feature_name)
            converted_feature, binning_strategies = convert_feature(feature)
            variable = variables[feature_name]
            add_key_value_pair(variable, "feature", converted_feature)
            if binning_strategies is not None:
                for binning_strategy, suffix in binning_strategies:
                    binned_variable_name = feature_name + suffix
                    binned_variable = copy(variable, binned_variable_name)
                    update_vars[binned_variable_name] = binned_variable 
                    add_key_value_pair(binned_variable, "binning_strategy", binning_strategy)


    package = {}
    for variable_name, variable in variables.items():
#        print(f"writing to {variable_name}")
        categories = identifier("no_category")
        key = "feature"
        while key in variable:
            categories = variable[key].get("categories", [])
            if len(categories) == 0:
                key += "_alt"
            else:
                break
            
        if isinstance(categories, list):
            dir_name = categories[0]
        else:
            dir_name = "Uncategorized"

        file_name = f"{variable_name}.dhall"
        variable_output_dir_path = os.path.join(variables_output_dir_path, dir_name)
        variable_output_file_path = os.path.join(variable_output_dir_path, file_name)

        if "feature" in variable:
            package[variable_name] = record_completion("FeatureVariable", imp(f"./{dir_name}/{file_name}"))
        else:
            print(f"cannot find feature {variable_name}")
            
        os.makedirs(variable_output_dir_path, exist_ok=True)
        with open(variable_output_file_path, "w") as vof:
            dhall.dump(let(
                {
                    "meta": imp("../../common/meta.dhall"),
                    **{
                        k: identifier(f"meta.{k}") for k in extract_identifiers(variable)
                    }
                },
                variable
            ), vof)

    with open(os.path.join(variables_output_dir_path, "package.dhall"), "w") as pof:
        dhall.dump(let(
            {
                "meta": imp("../common/meta.dhall"),
                **{
                    k: identifier(f"meta.{k}") for k in ["FeatureVariable"]
                }
            }, package), pof)


if __name__ == "__main__":
    all_features_input_file_path, identifiers_input_file_path, fhir_mappings_input_file_path, variables_output_dir_path = sys.argv[1:]

    convert(all_features_input_file_path, identifiers_input_file_path, fhir_mappings_input_file_path, variables_output_dir_path)


                        





        
