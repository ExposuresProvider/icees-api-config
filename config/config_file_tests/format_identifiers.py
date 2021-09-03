import yaml
import json
import requests
import csv
import pandas as pd
from tempfile import NamedTemporaryFile
import shutil


def format_identifiers(document):
    for table, feature in document.items():
        for feature_name, identifier_list in list(feature.items()):
            if identifier_list == []:
                print(feature[feature_name])
                del feature[feature_name]
    return(document)


with open(r'consistent_identifiers_with_labels.yml') as file:
    document = yaml.full_load(file)
d = format_identifiers(document)
print(d)
with open(r'formatted_consistent_identifiers_with_labels.yml', 'w') as file:
    documents = yaml.dump(d, file)