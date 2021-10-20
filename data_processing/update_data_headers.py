import argparse
import pandas as pd


parser = argparse.ArgumentParser(description="convert csv data headers based on variable mapping")
parser.add_argument("--input_mapping_file", type=str,
                    default='mapping/asthma_header_mapping.csv',
                    help="input mapping file with path for header mapping")
parser.add_argument("--input_csv_file", type=str,
                    default=None, help="input csv file to be updated")
parser.add_argument("--output_csv_file", type=str, help="output updated csv file")

args = parser.parse_args()
input_mapping_file = args.input_mapping_file
input_csv_file = args.input_csv_file
output_csv_file = args.output_csv_file

mapping_df = pd.read_csv(input_mapping_file, dtype=str, index_col='Original_Variable')
mapping_dict = mapping_df.to_dict()['New_Variable']

input_df = pd.read_csv(input_csv_file, dtype=str)
renamed_df = input_df.rename(mapping_dict, axis='columns')
renamed_df.to_csv(output_csv_file, index=False)
