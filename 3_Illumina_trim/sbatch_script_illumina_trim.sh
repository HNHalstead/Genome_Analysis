#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -J hh_trim_illumina_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com



# Load modules
module load bioinfo-tools
module load trimmomatic/0.36
# Your commands

#Settings for trimmming paired end reads
trimmomatic PE -phred33 E745-1.L500_SZAXPI015146-56_1_clean.fq.gz E745-1.L500_SZAXPI015146-56_2_clean.fq.gz E745-1.L500_SZAXPI015146-56_clean_trim_f_paired.fq.gz E745-1.L500_SZAXPI015146-56_clean_trim_f_unpaired.fq.gz E745-1.L500_SZAXPI015146-56_clean_trim_r_paired.fq.gz E745-1.L500_SZAXPI015146-56_clean_trim_r_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:27 MINLEN:36
