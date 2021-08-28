import yaml
import json
import requests
import csv
import pandas as pd
from tempfile import NamedTemporaryFile
import shutil

allowedVocabs = ['ICD10', 'ICD10CM', 'ICD10CN', 'ICD10GM', 'ICD10PCS', 'ICD9CM',
 'ICD9Proc', 'ICD9ProcCN', 'LOINC', 'RxNorm', 'RxNorm Extension', 'SNOMED']


def checkIdExits(ID):
    node_normalizer_url = "https://nodenormalization-sri.renci.org/1.1/get_normalized_nodes"
    id_exists = None
    labels = None
    input_obj = {
        "curies": [ID]
    }
    curl_cmd = f"curl -XPOST {node_normalizer_url} -H \"Content-Type: application/json\" -d '{json.dumps(input_obj)}'"

    resp = requests.post(node_normalizer_url, headers={
        "Content-Type": "application/json",
        "Accept": "applicaton/json"
    }, json=input_obj)

    obj = resp.json()
    #print(obj)
    for key, value in obj.items():
        if value is not None:
            #for id, label in value.items():
            labels = value['id']['label']
            #print(labels)
        id_exists = value
        #print(id_exists)
    return id_exists, labels


def check_consistant(table):
    #print(table)
    for feature_name, identifier_list in table.items():
        #print(table[feature_name])
        #print(table, ":", feature_name, ":", identifier_list)
        #identifier_df = pd.DataFrame(identifier_list)
        new_list = []
        for idx, identifier in enumerate(identifier_list):
            #print(identifier)
            item = str(identifier)
            vocab = item.rsplit(':', 1)[0]
            if vocab in allowedVocabs:
                new_list.append({identifier:'allowed'})
            else:
                exists, labels = checkIdExits(identifier)
                if exists:
                    #print(exists)
                    #print(labels)
                    new_list.append({identifier:labels})
        table[feature_name] = new_list
        print(table[feature_name])
    return document



with open(r'../identifiers copy.yml') as file:
    document = yaml.full_load(file)
#print(document['patient'])
#d= check_consistant(document['patient'])
d= check_consistant(document['visit'])
with open(r'consistent_identifiers3.yml', 'w') as file:
    documents = yaml.dump(d, file)
