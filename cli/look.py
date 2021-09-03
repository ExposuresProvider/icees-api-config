import sys
from tabulate import tabulate
import pandas as pd
import argparse
from functools import partial

parser = argparse.ArgumentParser(description="""look at csv as tables

python look.py | less -S
""")

parser.add_argument("input_file_path", type=str, help="input file path")
parser.add_argument("--grep", type=str, default=None, help="grep for string")
parser.add_argument("--select", type=str, nargs="*", help="select column")
parser.add_argument("--distinct", action="store_true", default=False, help="distince rows")

args = parser.parse_args()
input_file_path = args.input_file_path
grep_string = args.grep
select_columns = args.select
distinct = args.distinct

def grep_list(grep_string, l):
    return any(grep_string in s for s in l)

df = pd.read_csv(input_file_path, dtype=str, na_filter=False)

if grep_string is not None:
    df = df[df.apply(lambda r: r.str.contains(grep_string).any(), axis=1)]

if select_columns is not None and len(select_columns) > 0:
    df = df[select_columns]

if distinct:
    df = df.drop_duplicates()
    
matrix = matrix = df.values.tolist()

print(tabulate(matrix, tablefmt="grid", headers=list(df.columns)))
    
    


