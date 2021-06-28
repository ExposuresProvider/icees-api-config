#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jun 28 09:56:31 2021

@author: priyash
"""

import pandas as pd
from test_config_consistency import difference_check


#dili = pd.read_csv('/Users/priyash/Documents/ICEES_Project/ebcr0_datasets/DILI/augmentin_ptlist_upto_3.10.21_v2_ICEES header_rev2_add_year.csv')
covid = pd.read_csv('/Users/priyash/Documents/ICEES_Project/ebcr0_datasets/covid/patient.csv',low_memory=False)

yaml_file = '/Users/priyash/Documents/GitHub/icees-api-config/config/all_features.yaml'

difference_check(covid, yaml_file)