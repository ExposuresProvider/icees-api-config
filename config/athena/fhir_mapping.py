import yaml
import requests
import argparse
import warnings

warnings.filterwarnings('ignore', '.*ssl*', )


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Process arguments.')
    parser.add_argument('--input_feature_yaml_file', type=str,
                        default='../ground-truth-yaml-files/FHIR_mappings_pcd.yml',
                        help='input feature yaml file')
    parser.add_argument('--output_fhir_mapping_file', type=str,
                        default='../ground-truth-yaml-files/FHIR_mappings.yml',
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

    athena_root_url = 'https://athena.ohdsi.org/api/v1/concepts?pageSize=15&page=1'
    athena_api_url_appendx = '&domain={dom}&query={qry}'
    variable_mapped_dict = {}
    for key, value in variable_dict.items():
        search_term = value['search_term']
        term_class = value['class'] if 'class' in value else ''
        domain = list(map(lambda x: x.strip(), value['domain'].split(','))) if 'domain' in value else []
        vocab = list(map(lambda x: x.strip(), value['vocab'].split(','))) if 'vocab' in value else []
        urls_to_doms = {}
        for dom in domain:
            url = athena_api_url_appendx.format(dom=dom, qry=search_term)
            if term_class:
                url = f'{url}&class={term_class}'
            if vocab:
                for voc in vocab:
                    url = f'{url}&vocabulary={voc}'
                    urls_to_doms[url] = dom
            else:
                urls_to_doms[url] = dom

        for url, dom in urls_to_doms.items():
            # encode_url = requests.utils.quote(url)
            encode_url = url
            req_url = f'{athena_root_url}{encode_url}'
            r = requests.get(req_url, verify=False)
            r_json = r.json()
            mapped_codes = [content['code'] for content in r_json['content']]
            code_dict_ary = []
            for code in mapped_codes:
                code_dict_ary.append({'code': str(code)})
            variable_mapped_dict[key] = {
                dom: code_dict_ary
            }
    with open(output_file, "w") as fhir_output:
        yaml.dump({
            'FHIR': variable_mapped_dict
        }, fhir_output)
