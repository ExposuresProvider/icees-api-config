#!/bin/bash

#SBATCH -N 1
#SBATCH -c 1
#SBATCH -t 48:00:00
#SBATCH -o log/%A_%a.out
#SBATCH -e log/%A_%a.err
#SBATCH -p batch
#SBATCH -n 24

echo `hostname`



module load python 

#pip install pandas

# Run your executable

python download_athena_updated_v2.py > log_file_v6.txt