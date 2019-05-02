#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:30:00
#SBATCH -J hh_map_rna_Serum_efaecium_ERR1797969
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com



# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9
# Your commands

#Index reference genome as it is large
#Map RNA from Serum to genome assembly

bwa index -p efaecium_rna_serum_map_ERR1797969 /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/combined_alignment.fasta
bwa mem -M efaecium_rna_serum_map_ERR1797969 trim_paired_ERR1797969_pass_1.fastq.gz trim_paired_ERR1797969_pass_2.fastq.gz | samtools sort -o output_rna_serum_map_ERR1797969.bam

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9

bwa index -p efaecium_rna_serum_map_ERR1797970 /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/combined_alignment.fasta
bwa mem -M efaecium_rna_serum_map_ERR1797970 trim_paired_ERR1797970_pass_1.fastq.gz trim_paired_ERR1797970_pass_2.fastq.gz | samtools sort -o output_rna_serum_map_ERR1797970.bam
#-M flags shorter split hits as secondary to longer hits

# Load modules
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9

bwa index -p efaecium_rna_serum_map_ERR1797971 /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/combined_alignment.fasta
bwa mem -M efaecium_rna_serum_map_ERR1797971 trim_paired_ERR1797971_pass_1.fastq.gz trim_paired_ERR1797971_pass_2.fastq.gz | samtools sort -o output_rna_serum_map_ERR1797971.bam
#-M flags shorter split hits as secondary to longer hits
