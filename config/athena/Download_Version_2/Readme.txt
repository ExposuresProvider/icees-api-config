NB: the code and files in this Download_Version_2 is the final version that was used to download the athena files. This should be used moving forward unless advised otherwise. The code was developed to reduce the effort on filtering the right idenitifers (equivalent name is vocab from athena) for FHIR mapping. 

download_athena_updated_v2.py downloads the files by defining the domain (Drug, Condtion, etc) and vocabs (RxNorm, SNOWMED, etc). If the fetaure has suffix as Rx, we only download files with domain drug and vocab Rxnorm otherise we . 

Domain.txt is a full list of domains Athena webiste. Here, Vocab.txt only contains the vocabs of our interest. 

covid_feature_key_terms_v2.csv - this is the file used to pull covid features and search term. Verify this file with Kara everytimefor search terms as she is an expert in the medical domain. 


download_athena_updated_v2.py can be ran as a cran job using download.sh

Additional comments from Priya: "[My code] first develops the url for each feature using the exact match "term from column B" to download the file from athena. If the url hits an error due to large file, then my code (2nd step) modifies the downloading url to incorporate the domain and vocab terms to download smaller files. (3rd step), if the url with exact search term does not find any entries then my code modifies the downloading url to incorporate the domain and vocab terms."

Also see Megha's branch (not merged): https://github.com/ExposuresProvider/icees-api-config/tree/megha-working/config/athena/Download_Version_2.
