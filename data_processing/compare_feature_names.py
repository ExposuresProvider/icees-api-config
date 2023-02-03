import argparse
import yaml

parser = argparse.ArgumentParser(description='Process arguments.')
parser.add_argument('input_feature_yml', type=str,
                    help='input all features yaml file')
parser.add_argument('input_fhir_mapping_yaml', type=str,
                    help='input fhir mapping yaml file')

if __name__ == '__main__':
    args = parser.parse_args()
    input_feature_yml = args.input_feature_yml
    input_fhir_mapping_yml = args.input_fhir_mapping_yaml

    with open(input_feature_yml, 'r') as f:
        features_dict = yaml.safe_load(f)

    with open(input_fhir_mapping_yml, 'r') as f:
        fhir_dict = yaml.safe_load(f)

    feature_names = list(features_dict['patient'].keys())
    fhir_feature_names = list(fhir_dict['FHIR'].keys())
    print(f'feature names in all features but not in FHIR mapping: '
          f'{set(feature_names).difference(set(fhir_feature_names))}')
    print(f'feature names in FHIR mapping but not in all features: '
          f'{set(fhir_feature_names).difference(set(feature_names))}')
