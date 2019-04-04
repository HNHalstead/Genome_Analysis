#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:00:00
#SBATCH -J hh_canu_pacbio_efaecium
#SBATCH --mail-type=ALL
#SBATCH --mail-user halsteadholly73@gmail.com

#To Run:

#salloc -A g2019003 -p core -n 2 -t 06:00:00 --reservation=g2019003_1
#sbatch sbatch_script_canu_pac.sh

# Load modules
module load bioinfo-tools
module load canu
# Your commands

#Correct Raw Reads
canu  
  -p efaecium_canu_pac -d efaecium_canu_pac
  genomeSize=3.1m
  -pacbio-raw  *.fastq.gz
