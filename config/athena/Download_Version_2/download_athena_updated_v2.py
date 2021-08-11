#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Aug  8 12:09:29 2021

@author: priyash
"""

import pandas as pd
import urllib.request
from urllib.error import HTTPError
import re
import os
from time import sleep
from zipfile import ZipFile
from os.path import basename


def download_athena_files(search_list, name_list, outfile):
    
    vocab_list = []
    with open('/home/priyash/Scripts/scripts_erbc_download/vocab_list_v2.txt') as reslist:
         for file_name in reslist:
                vocab_list.append(file_name.rstrip('\n'))


    vocab = []
    for vocab_name in vocab_list:
        regex = re.compile('[@_!#$%^&*()<>?/\|}{~:]')
        if re.search(r"\s",vocab_name):
            fixed_vocab = vocab_name.replace(' ', '+')
            vocab.append(fixed_vocab)
        elif (regex.search(vocab_name) == None):
            vocab.append(vocab_name)
        else:
            fixed_vocab = vocab_name.replace('/', '%2F')
            vocab.append(fixed_vocab)    


    domain_list = []
    with open('/home/priyash/Scripts/scripts_erbc_download/domain_list.txt') as reslist:
         for file_name in reslist:
            domain_list.append(file_name.rstrip('\n'))

    domain = []
    for domain_name in domain_list:
        regex = re.compile('[@_!#$%^&*()<>?/\|}{~:]')
        if re.search(r"\s",domain_name):
            fixed_domain = domain_name.replace(' ', '+')
            domain.append(fixed_domain)
        elif (regex.search(domain_name) == None):
            domain.append(domain_name)
        else:
            fixed_domain = domain_name.replace('/', '%2F')
            domain.append(fixed_domain) 

    last_file_name = []

    for iter_num, feature in enumerate(search_list):

        print(name_list[iter_num],feature)


        if len(feature.split())==1:
            feature_n =  feature + "%22&boosts"
            name = name_list[iter_num]
            #print(urll)
        else:
            fix_search_term = (feature.replace(" ", "+"))
            name = name_list[iter_num]
            feature_n = fix_search_term + "%22&boosts"

         # If feature has suffix as Rx, we only download files with domain drug and vocab Rxnorm   

        if 'Rx' in name:
            #print(name)
            d = 'Drug'
            v = 'RxNorm'
            file_name_last = outfile + name + '.csv'
            file_name = outfile + name + '.csv'

            try: 
                url3 = "https://athena.ohdsi.org/api/v1/concepts/download/csv?domain={}&vocabulary={}&page=1&pageSize=15&query=%22"
                url_last = url3 + feature_n

                url_domain = url_last.format(d,v)
                print(url_domain)

                urllib.request.urlretrieve(url_domain, file_name)
            except HTTPError as err:
                if err.code == 400:
                    print('error on:',url_domain, ':', file_name)
                else:
                    raise

         # otherwise download every domain and vocab except drug and Rxnorm for rest of the features               
        else:
            list_of_filenames = []
            file_name_last = outfile + name + '.csv'
            for d in domain:
                for v in vocab:
                    file_name = outfile + name + '_' + d + '_' + v + '.csv'
                    file_name_last = outfile + name + '.csv'
                    try:
                        url3 = "https://athena.ohdsi.org/api/v1/concepts/download/csv?domain={}&vocabulary={}&page=1&pageSize=15&query=%22"
                        url_last = url3 + feature_n
                        url_domain = url_last.format(d,v)
                        print(url_domain)

                        urllib.request.urlretrieve(url_domain, file_name)
                    except HTTPError as err:
                            if err.code == 400:
                                print('error on:',url_last, ':', file_name)
                            else:
                                raise

                    list_of_filenames.append(file_name)
            combined_csv = pd.concat([pd.read_csv(f,sep='delimiter') for f in list_of_filenames if os.path.isfile(f)])
            combined_csv.to_csv(file_name_last, index=False, encoding='utf-8-sig')

        last_file_name.append(file_name_last)

    with ZipFile('Athena_data_v5.zip', 'w') as zipObj:
        for file in last_file_name:
            if file.endswith("csv"):
                if os.stat(file).st_size != 58:
                    print(file)
                    zipObj.write(file, basename(file))
                    

if __name__ == "__main__":
    
    """
    
    You can change this to any use case. You can read the features and fix the regular expression for the features to normal searchable strings
    Modify the code below and run the script
    
    """

    # this is the file used to pull covid features and search term.
    
    data = pd.read_csv('/home/priyash/Scripts/scripts_erbc_download/covid_feature_key_terms_v2.csv')
    data = data.drop([49, 52])
    data.dropna(subset=['newft'],inplace=True)
    data.reset_index(drop=True, inplace=True)

    outfile = '/home/priyash/Scripts/scripts_erbc_download/Athena_downloaded_csv_v5/'

    
    search_list = list(data['newft'])
    name_list = list(data['original_feature'])
    
    
    download_athena_files(search_list, name_list, outfile)