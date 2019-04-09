#Running Trimmomatic on Illumina DNA Sequences in the Terminal

###Queue for core allocation:
salloc -A g22019003 -p core -n 1 -t 02:00:00

###Load modules
module load bioinfo-tools
module load trimmomatic/0.36

###Submit Batch Job
sbatch sbatch_script_illumina.sh
