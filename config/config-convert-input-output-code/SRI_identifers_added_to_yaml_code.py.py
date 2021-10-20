import requests
import json
import yaml
import pandas as pd
import re
from collections import defaultdict


# SRI look up name service

nr_url = 'https://name-resolution-sri.renci.org/lookup'


## remove space takes care of unwanted character in our features name. NB: this is very feature and API specific

def remove_space(x):

    # you can expand the list

    listy = ['_', 'he_', 'eb_', '[', ']', '_dx', '_Dx', '_Rx']
    
    for i in listy:
        if i in x:
            if i == '_':
                x = x.replace(i," ")
            else:
                x = x.replace(i,"")
    return x


# reading the yaml file
 file='/Users/priyash/Documents/GitHub/icees-api-config/config/features_test_priya.yaml'

 with open(file) as f:
    
    data = yaml.load(f, Loader=yaml.FullLoader)
    
    features = []
    
    yaml_dict = defaultdict(dict)
    for i in data.keys():
        
        for key, val in data[i].items():
            #print(i, key)
            if 'search_term' in val:
                params = {'string': val['search_term']}
                response = requests.post(nr_url,params=params)
                nn_identifiers = []
                for x in response.json():
                    nn_identifiers.append(x)
                    yaml_dict[i][key] = nn_identifiers
            else:
                
                key = remove_space(key)
                params = {'string': key}
                response = requests.post(nr_url,params=params)
                #print(params)
                nn_identifiers = []
                for x in response.json():
                    nn_identifiers.append(x)
                    yaml_dict[i][key] = nn_identifiers


yaml_dict = dict(yaml_dict)

with open('/Users/priyash/Documents/Github/icees-api-config/config/identifers_version0_01.yaml', 'w') as file:
    documents = yaml.dump(yaml_dict, file)