import yaml
import requests
import argparse
import warnings

warnings.filterwarnings('ignore', '.*ssl*', )

SYSTEM_MAPPING = {
    'RxNorm': 'http://www.nlm.nih.gov/research/umls/rxnorm',
    'LOINC': 'http://loinc.org',
    'LOINC%20Hierarchy': 'http://loinc.org',
    'CPT4': 'http://www.ama-assn.org/go/cpt/',
    'ICD10': 'http://hl7.org/fhir/sid/icd-10-cm',
    'ICD10CM': 'http://hl7.org/fhir/sid/icd-10-cm',
    'ICD10%20Hierarchy': 'http://hl7.org/fhir/sid/icd-10-cm',
    'ICD9Proc': 'http://hl7.org/fhir/sid/icd-9-cm',
    'ICD9CM': 'http://hl7.org/fhir/sid/icd-9-cm',
    'ICD9ProcCN': 'http://hl7.org/fhir/sid/icd-9-cm'
}

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Process arguments.')
    parser.add_argument('--input_feature_yaml_file', type=str,
                        default='../ground-truth-yaml-files/FHIR_mappings_pcd.yml',
                        help='input feature yaml file')
    parser.add_argument('--output_fhir_mapping_file', type=str,
                        default='../ground-truth-yaml-files/FHIR_mappings_output_pcd.yml',
                        help='output file for the generated fhir mapping yaml file')

    args = parser.parse_args()
    input_file = args.input_feature_yaml_file
    output_file = args.output_fhir_mapping_file

    with open(input_file, 'r') as features_file:
        features_dict = yaml.safe_load(features_file)

    variable_dict = {}
    for key, value in features_dict.items():
        # key is FHIR, value is a dict under FHIR
        for inner_key, inner_val in value.items():
            variable_dict[inner_key] = inner_val

    athena_root_url = 'https://athena.ohdsi.org/api/v1/concepts?pageSize=200&pageNumber=1&'
    variable_mapped_dict = {}
    for key, value in variable_dict.items():
        if not value or 'search_term' not in value or 'domain' not in value or not value['search_term']:
            variable_mapped_dict[key] = {
                'not_FHIR': {}
            }
            continue
        search_term = value['search_term'].strip()
        if not search_term:
            variable_mapped_dict[key] = {
                'not_FHIR': {}
            }
            continue
        if 'system' in value and 'code' in value:
            variable_mapped_dict[key] = {
                'Patient': {
                    'code': value['code'],
                    'system': value['system']
                }
            }
            continue

        search_term = search_term.replace(' ', '%20').replace('|', '%7C')
        athena_api_url_appendx = f'query="{search_term}"'
        term_class = value['class'] if 'class' in value else ''
        if term_class:
            term_class = term_class.replace(' ', '%20')
            athena_api_url_appendx += f'&conceptClass={term_class}'
        domain = list(map(lambda x: x.strip(), value['domain'].split(',')))
        for dom in domain:
            athena_api_url_appendx = f'{athena_api_url_appendx}&domain={dom}'

        vocab = list(map(lambda x: x.strip(), value['vocab'].split(','))) if 'vocab' in value and value['vocab'] else []
        if not vocab and not term_class:
            print(f'no map key - either vocab or class needs to be provided. {key}: {value}')
            continue
        urls_to_systems = {}
        if not vocab:
            url = f'{athena_root_url}{athena_api_url_appendx}'
            urls_to_systems[url] = SYSTEM_MAPPING[term_class]
        else:
            for voc in vocab:
                athena_api_url_appendx = f'{athena_api_url_appendx}&vocabulary={voc}'
                url = f'{athena_root_url}{athena_api_url_appendx}'
                urls_to_systems[url] = SYSTEM_MAPPING[voc]

        for req_url, system in urls_to_systems.items():
            r = requests.get(req_url, verify=False)
            r_json = r.json()
            if 'content' not in r_json or not r_json['content']:
                print(f'empty content returned: {req_url}: {system}. Doing non exact match instead')
                req_url = req_url.replace('"', '')
                r = requests.get(req_url, verify=False)
                r_json = r.json()
                if 'content' not in r_json or not r_json['content']:
                    print(f'empty content returned: {req_url}: {system}. exiting')
                    continue
            mapped_codes = [content['code'] for content in r_json['content']]
            # remove potential duplicates
            mapped_codes = list(set(mapped_codes))
            code_dict_ary = []
            for code in mapped_codes:
                # if {'code': str(code)} not in code_dict_ary:
                # print(f'map_key: {map_key}, url: {url}')
                code_dict_ary.append({'code': str(code),
                                      'system': system})

            for dom in domain:
                if key in variable_mapped_dict:
                    variable_mapped_dict[key][dom] = code_dict_ary
                else:
                    variable_mapped_dict[key] = {
                        dom: code_dict_ary
                    }

    with open(output_file, "w") as fhir_output:
        yaml.dump({
            'FHIR': variable_mapped_dict
        }, fhir_output)
