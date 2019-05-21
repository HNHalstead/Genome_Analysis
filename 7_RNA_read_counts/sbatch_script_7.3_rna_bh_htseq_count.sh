#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J hh_count_rna_bh_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com

###Counts of Mapped Serum RNA from Serum

# Load modules

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view output_rna_bh_map_ERR1797972.bam | htseq-count --format bam --type CDS  output_rna_bh_map_ERR1797972.bam /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/prokka_combined_align/e_faecium_combined_align_annot.gtf > rna_bh_ERR1797972_counts.txt


module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view output_rna_bh_map_ERR1797973.bam | htseq-count --format bam --type CDS output_rna_bh_map_ERR1797973.bam /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/prokka_combined_align/e_faecium_combined_align_annot.gtf > rna_bh_ERR1797973_counts.txt


module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view output_rna_bh_map_ERR1797974.bam | htseq-count --format bam --type CDS output_rna_bh_map_ERR1797974.bam /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/prokka_combined_align/e_faecium_combined_align_annot.gtf > rna_bh_ERR1797974_counts.txt
