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

def addRxnormName(document):
    for table, feature in document.items():
        for feature_name, identifier_list in list(feature.items()):
            for idx, identifier in enumerate(identifier_list):
                #print(identifier)
                for id, name in identifier.items():
                    item = str(id)
                    vocab = item.rsplit(':', 1)[0]
                    code = item.rsplit(':', 1)[1]
                    if vocab == 'RxNorm':
                        print(vocab)
                        print(code)
                        rxname = getRxnormName(code)
                        print(rxname)
                        print(identifier[id])
                        identifier[id] = rxname
                        print(document[table][feature_name][idx])
                        print(identifier[id])
    return document

def getRxnormName(code):
    url = 'https://rxnav.nlm.nih.gov/REST/rxcui/' + str(code) + '/json'
    resp = requests.get(url)
    id = resp.json()
    #print(id)
    name = id['idGroup'].get('name')
    return name

#with open(r'consistent_identifiers_with_labels.yml') as file:
#    document = yaml.full_load(file)
#d = format_identifiers(document)
#print(d)
#with open(r'formatted_consistent_identifiers_with_labels.yml', 'w') as file:
#    documents = yaml.dump(d, file)

with open(r'formatted_consistent_identifiers_with_labels.yml') as file:
    document = yaml.full_load(file)
print(document)
d = addRxnormName(document)
with open(r'formatted_consistent_identifiers_with_labels1.yml', 'w') as file:
    documents = yaml.dump(d, file)
