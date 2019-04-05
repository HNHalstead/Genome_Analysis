#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -J hh_align_illum_pac_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com



# Load modules
module load bioinfo-tools
module load bwa/0.7.17
# Your commands

#Index reference genome as it is large
#Map illumina reads to PacBio contigs

bwa index efaecium_canu_pac.contigs.fasta
bwa mem -M efaecium_canu_pac.contigs.fasta E745-1.L500_SZAXPI015146-56_clean_trim_f_paired.fq.gz E745-1.L500_SZAXPI015146-56_clean_trim_r_paired.fq.gz > aln-illumina_to_pac.sam

#-M flags shorter split hits as secondary to longer hits
