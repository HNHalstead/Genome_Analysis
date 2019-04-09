#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J hh_combine_illum_pac_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com



# Load modules
module load bioinfo-tools
module load Pilon
# Your commands

#Indexed reference genome as it is large
#Corrects the Pacbio alignment

pilon --genome efaecium_canu_pac.contigs.fasta --frags aln-illumina_to_pac.bam --outdir combined_alignment --output combined_alignment
