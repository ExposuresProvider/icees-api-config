#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jul 13 16:50:51 2021

Downloads the mappings from Athena URL. 

@author: priyash
"""

import pandas as pd
import urllib.request
from urllib.error import HTTPError
import re
import os
from time import sleep



def putSpace(input):  
    
    # regex [A-Z][a-z]* means any string starting   
    # with capital character followed by many   
    # lowercase letters   
    words = re.findall('p?[A-Z][A-Z0-9]*(?=[A-Z]|$)|[A-Z][a-z0-9\-]*', input)  

    return  ' '.join(words)

def download_athena_files(search_list, name_list, url, url2, outfile):

    file_path_download = []

    for iter_num, feature in enumerate(search_list):
        time.sleep(10)

        print(name_list[iter_num],feature)
        if len(feature.split())==1:
            urll = url + feature + "%22&boosts"
            name = name_list[iter_num]
            print(urll)
        else:
            fix_search_term = (feature.replace(" ", "+"))
            name = name_list[iter_num]
            urll = url + fix_search_term + "%22&boosts"
            print(urll)

        file_name = outfile + name + '.csv'
        print(file_name)

        file_path_download.append(file_name)


        # Here downloading everything (without specificying domain and vocab) for search terms with qoutation mark
        
        try:
            urllib.request.urlretrieve(urll, file_name)
        except HTTPError as err:
            if err.code == 400:
                print('error on:', urll, ':', file_name)
            else:
                raise


        ## If the file did not get downloaded due to restricted search term then remove the qoutations and then download

        if os.path.isfile(file_name):
            if os.stat(file_name).st_size == 58:
                print('File is empty with url:', file_name)
                try:
                    url_sec = url2 + fix_search_term + "&boosts"
                    urllib.request.urlretrieve(url_sec, file_name)
                except HTTPError as err:
                    if err.code == 400:
                        print('error on:', url_sec, ':', file_name)
                    else:
                        raise
            else:
                pass


        # if we still got 400 error because the file was large then use domain and vocab to download files


        if os.path.isfile(file_name):
            if os.stat(file_name).st_size == 58:
                print('File is empty with url:', file_name)

                list_of_filenames = []


                vocab_list = []
                with open('/home/priyash/Scripts/scripts_erbc_download//vocab_list.txt') as reslist:
                    for file_name in reslist:
                        vocab_list.append(file_name.rstrip('\n'))

                vocab = []
                for vocab_name in mgwas_file_names:
                    regex = re.compile('[@_!#$%^&*()<>?/\|}{~:]')
                    if re.search(r"\s",vocab_name):
                        fixed_vocab = vocab_name.replace(' ', '+')
                        vocab.append(fixec_vocab)
                    elif (regex.search(vocab_name) == None):
                        domain.append(vocab_name)
                    else:
                        fixed_vocab = vocab_name.replace('/', '%2F')
                        vocab.append(fixed_vocab)


                domain_list = []
                with open('/home/priyash/Scripts/scripts_erbc_download/domain_list.txt') as reslist:
                    for file_name in reslist:
                        domain_list.append(file_name.rstrip('\n'))

                domain = []
                for domain_name in mgwas_file_names:
                    regex = re.compile('[@_!#$%^&*()<>?/\|}{~:]')
                    if re.search(r"\s",domain_name):
                        fixed_domain = domain_name.replace(' ', '+')
                        domain.append(fixed_domain)
                    elif (regex.search(domain_name) == None):
                        domain.append(domain_name)
                    else:
                        fixed_domain = domain_name.replace('/', '%2F')
                        domain.append(fixed_domain)


                for d in domain:
                    for v in vocab: 
                        file_name = outfile + name + '_' + d + '_' + v + '.csv'
                        file_name_last = outfile + name + '.csv'
                        try:
                            url3 = "https://athena.ohdsi.org/api/v1/concepts/download/csv?domain={}&vocabulary={}&page=1&pageSize=15&query="
                            url_last = url3 + fix_search_term
                            #url3 = "https://athena.ohdsi.org/api/v1/concepts/download/csv?domain={}&vocabulary={}&page=1&pageSize=15&query=Chronic+Nasal+Congestion"
                            url_domain = url_last.format(d,v)
                            print(url_domain)
                            urllib.request.urlretrieve(url_domain, file_name)
                        except HTTPError as err:
                                if err.code == 400:
                                    print('error on:',url3, ':', file_name)
                                else:
                                    raise
                        list_of_filenames.append(file_name)


                combined_csv = pd.concat([pd.read_csv(f,sep='delimiter') for f in list_of_filenames if os.path.isfile(f)])
                combined_csv.to_csv(file_name_last, index=False, encoding='utf-8-sig')



    with ZipFile('Athena_data_iceescovidfeature.zip', 'w') as zipObj:
    for file in file_path_download:
        if file.endswith("csv"):
            if os.stat(filename).st_size != 58:
                print(filename)
                zipObj.write(file, basename(file))
                

if __name__ == "__main__":
    
    """
    
    You can change this to any use case. You can read the features and fix the regular expression for the features to normal searchable strings
    Modify the code below and run the script
    
    """
    
    data = pd.read_csv('/home/priyash/Scripts/scripts_erbc_download/List_to_pull_from_athena.txt', header = None)
    data.rename(columns = {0: 'original_feature'}, inplace = True)
    
    data['newft'] = data['original_feature'].apply(lambda x: x if (x.isupper() == True or x.islower() == True) else putSpace(x))
    data.iloc[0,1] = 'alanine aminotransferase'
    data.iloc[1,1] = 'aspartate aminotransferase'
    data.iloc[83,1] = 'white blood cell count'
    data.iloc[31,1] = 'estimated globular filtration rate'
    data.iloc[15,1] = 'creatine kinase'
    data.iloc[60,1] = 'primary ciliary dyskinesia'
    data.iloc[4,1] = 'age'
    data.iloc[33,1] = 'heart failure'
    data.iloc[87,1] = 'arterial partial pressure oxygen'
    data.iloc[85,1] = 'arterial venous partial pressure carbon dioxide'
    data.iloc[75,1] = 'mixed venous oxygen saturation'
    data.iloc[2,1] = 'lymphocyte count'
    data.iloc[3,1] = 'lymphocyte count'
    data.iloc[39,1] = 'interleukin-6'
    data['newft'].replace('Dx', '', regex=True,inplace=True)
    data['newft'] = data['newft'].apply(lambda x: ' '.join(i.strip() for i in x.split()))
    
    url = "https://athena.ohdsi.org/api/v1/concepts/download/csv?page=1&pageSize=15&query=%22"
    outfile = '/home/priyash/Scripts/scripts_erbc_download/Athena_download_csv_v3/'
    url2 = "https://athena.ohdsi.org/api/v1/concepts/download/csv?page=1&pageSize=15&query="
    
    search_list = list(data['newft'])
    name_list = list(data['original_feature'])
    
    
    download_athena_files(search_list, name_list, url, url2, outfile)

