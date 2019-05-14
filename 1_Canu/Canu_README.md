#Running Canu on PacBio Paired Reads

##### *in the folder  
#### Convert file to Unix format
dos2unix sbatch_script_canu_pac.sh

#### Request job space allocation
salloc -A g2019003 -p core -n 2 -t 06:00:00 --reservation=<>

#### Queues batch
sbatch /home/hoha8653/GenomeAnalysis/Genome_Analysis/sbatch_script_canu_pac.sh
