#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J hh_count_rna_serum_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com

###Counts of Mapped Serum RNA from Serum

# Load modules

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view output_rna_serum_map_ERR1797969.bam | htseq-count --format bam --type CDS  output_rna_serum_map_ERR1797969.bam /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/prokka_combined_align/e_faecium_combined_align_annot.gtf > rna_serum_ERR1797969_counts.txt
#Option --order pos is used for htseq-count as bam was ordered by pos



module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view output_rna_serum_map_ERR1797970.bam | htseq-count --format bam --type CDS output_rna_serum_map_ERR1797970.bam /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/prokka_combined_align/e_faecium_combined_align_annot.gtf > rna_serum_ERR1797970_counts.txt

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

samtools view output_rna_serum_map_ERR1797971.bam | htseq-count --format bam --type CDS output_rna_serum_map_ERR1797971.bam /home/hoha8653/GenomeAnalysis/genome_soft/map_illu_pac/combined_alignment/prokka_combined_align/e_faecium_combined_align_annot.gtf > rna_serum_ERR1797971_counts.txt
