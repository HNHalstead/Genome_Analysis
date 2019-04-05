#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J hh_align_illum_pac_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com



# Load modules
module load bioinfo-tools
module load samtools/1.9
# Your commands

#Index reference genome as it is large
#Map illumina reads to PacBio contigs
#samtools index aln-illumina_to_pac.sam
samtools view -bS aln-illumina_to_pac.sam > aln-illumina_to_pac.bam
samtools sort aln-illumina_to_pac.sam > aln-illumina_to_pac.bam
samtools index aln-illumina_to_pac.bam
