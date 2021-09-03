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


def check_inconsistant(table):
    #print(table)
    for feature_name, identifier_list in table.items():
        #print(table[feature_name])
        new_list = []
        for idx, identifier in enumerate(identifier_list):
            #print(identifier)
            item = str(identifier)
            vocab = item.rsplit(':', 1)[0]
            if vocab in allowedVocabs:
                exists = "allowed"
            else:
                checkID, labels = checkIdExits(identifier)
                exists = checkID
            if not exists:
                print(identifier)
                new_list.append(identifier)
        table[feature_name] = new_list
        #print(table[feature_name])
    return document

def format_identifiers(document):
    for table, feature in document.items():
        for feature_name, identifier_list in list(feature.items()):
            if identifier_list == []:
                print(feature[feature_name])
                del feature[feature_name]
    return(document)

#--------extract consistant identifiers
#with open(r'../identifiers copy.yml') as file:
#    document = yaml.full_load(file)
#print(document['patient'])
#d= check_consistant(document['patient'])
#d= check_consistant(document['visit'])
#with open(r'consistent_identifiers3.yml', 'w') as file:
#    documents = yaml.dump(d, file)


#--------format 'consistent_identifiers_with_labels.yml' file to remove empty features
#with open(r'consistent_identifiers_with_labels.yml') as file:
#    document = yaml.full_load(file)
#d = format_identifiers(document)
#print(d)
#with open(r'formatted_consistent_identifiers_with_labels.yml', 'w') as file:
#    documents = yaml.dump(d, file)


#--------extract inconsistant identifiers
with open(r'../identifiers.yml') as file:
    document = yaml.full_load(file)
#d = check_inconsistant(document['patient'])
d= check_inconsistant(document['visit'])
print(d)
with open(r'inconsistent_identifiers.yml', 'w') as file:
    documents = yaml.dump(d, file)
