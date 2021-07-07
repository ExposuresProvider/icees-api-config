import yaml
import sys
import os
import subprocess
import tempfile
from collections import defaultdict

input_file_path, output_file_path = sys.argv[1:]

f, path = tempfile.mkstemp()
os.close(f)

subprocess.run(["dhall-to-yaml", "--file", input_file_path, "--output", path])

with open(path) as inpf:
    dataset = yaml.safe_load(inpf)

os.remove(path)

fhirmapping = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
geoidmapping = defaultdict(dict)
nearestpointmapping = defaultdict(lambda: {
    "attributes_to_features_map": {}
})
nearestfeaturemapping = defaultdict(lambda: {
    "attributes_to_features_map": {}
})
visitmapping = {}

def add_mapping(mapping, feature_name, nearestpointmapping):
    if "maximum" in mapping: 
        nearestpointmapping[mapping["dataset"]].update({
            "distance_feature_name": feature_name,
            "maximum_distance": mapping["maximum"]
        })
    else:
        nearestpointmapping[mapping["dataset"]]["attributes_to_features_map"][mapping["name"]] = {
            "feature_name": feature_name,
            "feature_type": mapping["datatype"]["tag"].lower()
        }

for table in dataset:
    for feature in table["variables"]:
        feature_name = feature["name"]
        mapping = feature.get("mapping")
        if mapping is not None:
            if mapping["tag"] == "GenericFHIRMapping":
                for gm in mapping["param"]:
                    resource = gm["resource"]
                    system = gm["system"]
                    code = gm["code"]
                    system_is_regex = gm["system_is_regex"]
                    code_is_regex = gm["code_is_regex"]
                    a = fhirmapping[table["name"]]
                    b = a[feature_name]
                    c = b[resource]
                    c.append({
                        "system": system,
                        "code": code,
                        "system_is_regex": system_is_regex,
                        "code_is_regex": code_is_regex
                    })
            elif mapping["tag"] == "GEOIDMapping":
                mapping = mapping["param"]
                geoidmapping[mapping["dataset"]][mapping["column"]] = {
                    "feature_name": feature_name,
                    "feature_type": mapping["datatype"]["tag"].lower()
                }
            elif mapping["tag"] == "NearestPointMapping":
                add_mapping(mapping["param"], feature_name, nearestpointmapping)
            elif mapping["tag"] == "NearestFeatureMapping":
                add_mapping(mapping["param"], feature_name, nearestfeaturemapping)
            elif mapping["tag"] == "SpecializedFHIRMapping":
                if mapping["param"]["tag"] == "Visit":
                    visitmapping[feature_name] = mapping["param"]["param"]
                    
                
with open(output_file_path, "w") as outf:
    yaml.dump({
        "FHIR": {k:{k2:dict(v2) for k2,v2 in v.items()} for k,v in fhirmapping.items()},
        "GEOID": dict(geoidmapping),
        "NearestPoint": dict(nearestpointmapping),
        "NearestFeature": dict(nearestfeaturemapping),
        "Visit": visitmapping
    }, outf)





