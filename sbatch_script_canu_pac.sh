#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J hh_canu_pacbio_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com



# Load modules
module load bioinfo-tools
module load canu
# Your commands

#Correct Raw Reads
canu -p efaecium_canu_pac -d efaecium_canu_pac genomeSize=3.1m -pacbio-raw *.fastq.gz
