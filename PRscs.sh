#!/bin/bash
#
#SBATCH --job-name="PRScs"
#SBATCH -o PRScs.o%j
#SBATCH -e PRScs.e%j
#SBATCH --mail-user=<>
#SBATCH --mail-type=ALL
#SBATCH --partition="normal","highmem"
#SBATCH -a 1-22

python PRScs.py --ref_dir=/data3/mchopra/PRScs-1.1.0/ref_ukbb_eur/ldblk_ukbb_eur --bim_prefix=/data4/mchopra/GWAS_PGS_training/training_data/c_1_22 --sst_file=/data4/mchopra/GWAS_PGS_training/training_data/fastgwapgs/aao_input_prscs_se.txt --n_gwas=33372 --chrom=${SLURM_ARRAY_TASK_ID} --out_dir=/data4/mchopra/GWAS_PGS_training/training_data/PRScs_results/aao_${SLURM_ARRAY_TASK_ID}
