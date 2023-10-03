import argparse
import yaml
import pandas as pd

parser = argparse.ArgumentParser(description='Process arguments.')
parser.add_argument('input_feature_yml', type=str,
                    help='input all features yaml file')
parser.add_argument('input_patient_csv', type=str,
                    help='input patient csv file')


if __name__ == '__main__':
    args = parser.parse_args()
    input_feature_yml = args.input_feature_yml
    input_patient_csv = args.input_patient_csv

    with open(input_feature_yml, 'r') as f:
        features_dict = yaml.safe_load(f)

    patient_data = pd.read_csv(input_patient_csv)

    feature_names = list(features_dict['patient'].keys())
    patient_feature_names = list(patient_data.columns)
    print(f'feature names in all features yaml file but not in patient data: '
          f'{set(feature_names).difference(set(patient_feature_names))}')
    print(f'feature names in patient data but not in all features yaml file: '
          f'{set(patient_feature_names).difference(set(feature_names))}')
