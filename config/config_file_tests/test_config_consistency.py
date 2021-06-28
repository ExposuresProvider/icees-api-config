#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jun 23 17:29:06 2021

@author: priyash

The modules below are to check for consistency between configuration files and underlying table data, i.e., 
confirm that the table columns match the data type within each column

"""


import yaml
import numpy as np


def test_config_consistency(yamlfile):
    
    """
    
    This module flags the inconsistent enumeration and attributes for given feature.yaml files for any usecase. 
    The output is the incorrect enumerated features. You can modify to print bothth correct and incorrect enumerated features. 

    """
    
    with open(yamlfile) as f:
    
        # open and read yam files
        data = yaml.load(f, Loader=yaml.FullLoader)
    

        for item, doc in data.items():
            # looping through each table
            for ft in doc:
                
                # looping through every feature and checking the conditions below
                # correct conditions would be:
                # if key enum exists enum values should be string (even if they are in a list) and then the 'type' values should be a string
                # if key min and/or max exists then values should be integer then the 'type' values should be an integer 
                
                if ('enum' in doc[ft].keys()) and (doc[ft]['type'] == 'string'):
                    #if (isinstance(doc[ft]['enum'][0],str)):
                    pass#print(ft,'correct')#print(ft, "correct: enum is a srting and type is string")
                elif ('maximum' in doc[ft].keys()) and (doc[ft]['type'] == 'integer'):
                    pass#print(ft,'correct')#print(ft, "correct: maximum is a integer and type is integer")
                elif ('enum' not in doc[ft].keys()) and ('maximum' not in doc[ft].keys()):
                    pass
                else:
                    #print(ft,'incorrect',list(doc[ft].keys())[1],':',list(doc[ft].values())[1], 'type:', doc[ft]['type'])
                    print('incorrect:', ft, ':', doc[ft].items())
                    
                    
def difference_check(data, yamlfile):

    with open(yamlfile) as f:

        yaml_file_df = yaml.load(f, Loader=yaml.FullLoader)

        for item, doc in yaml_file_df.items():
            for ft in doc:
                if ft in data.columns:
                    #print(ft)

                    if data[ft].dtypes == 'object':
                        #print(ft)
                        uniq_val = list(data[ft].unique())
                        if np.nan in  uniq_val:
                            uniq_val.remove(np.nan)
                        #print(uniq_val)
                        if 'enum' in doc[ft].keys():
                            diff = list(set(list(doc[ft]['enum']))-set(uniq_val))
                            if diff == []:
                                pass #print('correct:', ft, ':, data_uniq_val:' ,uniq_val, ',yaml_enum_val:' sorted(list(doc[ft]['enum'])), ', difference:' diff) 
                            else:
                                print('incorrect', ft, ':, data_uniq_val:' ,uniq_val, ',yaml_enum_val:', sorted(list(doc[ft]['enum'])), ', difference:', diff) 


                    elif (data[ft].dtypes == 'float64') or (data[ft].dtypes == 'int64') :
                        #print(ft)
                        uniq_val = list(data[ft].unique())

                        #print(uniq_val)
                        #if np.nan in  uniq_val:
                            #uniq_val.remove(np.nan)
                        #print(uniq_val)

                        mx = max(uniq_val)
                        mi = min(uniq_val)

                        if 'maximum' in doc[ft].keys():
                            if mx==doc[ft]['maximum'] or mi==doc[ft]['minimum']:
                                pass #print('correct', ft, doc[ft].items())
                            else:
                                print('incorrect', ft, doc[ft].items(), 'data_uniq_val:' ,uniq_val)
                        elif 'enum' in doc[ft].keys():        
                            print('switchbin', ft, doc[ft].items(), 'data_uniq_val:' ,uniq_val)
                        else:
                            print('no numbers/bins', ft, doc[ft].items(), 'data_uniq_val:' ,uniq_val) 
        

def print_unique_values(df):
    
    for col in df.columns:
        print(col)
        print(df[col].unique())

if __name__ == "__main__": 
    test_config_consistency() 
    difference_check()
    print_unique_values()

