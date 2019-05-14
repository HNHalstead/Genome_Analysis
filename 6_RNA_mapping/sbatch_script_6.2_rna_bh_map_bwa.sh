#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J hh_map_rna_BH_efaecium_ERR1797972
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com

###Mapping RNA from BH

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9
# Your commands

#Index reference genome as it is large
#Map RNA from Serum to genome assembly

bwa index -p efaecium_rna_bh_map_ERR1797972 /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/combined_alignment.fasta
bwa mem -M efaecium_rna_bh_map_ERR1797972 trim_paired_ERR1797972_pass_1.fastq.gz trim_paired_ERR1797972_pass_2.fastq.gz | samtools sort -o output_rna_bh_map_ERR1797972.bam

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9
# Your commands

#Index reference genome as it is large
#Map RNA from Serum to genome assembly

bwa index -p efaecium_rna_bh_map_ERR1797973 /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/combined_alignment.fasta
bwa mem -M efaecium_rna_bh_map_ERR1797973 trim_paired_ERR1797973_pass_1.fastq.gz trim_paired_ERR1797973_pass_2.fastq.gz | samtools sort -o output_rna_bh_map_ERR1797973.bam

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9
# Your commands


bwa index -p efaecium_rna_bh_map_ERR1797974 /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/combined_alignment.fasta
bwa mem -M efaecium_rna_bh_map_ERR1797974 trim_paired_ERR1797974_pass_1.fastq.gz trim_paired_ERR1797974_pass_2.fastq.gz | samtools sort -o output_rna_bh_map_ERR1797974.bam
