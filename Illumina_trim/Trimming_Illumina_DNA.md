# Running Trimmomatic on Illumina DNA Sequences

### Queue for core allocation:

###### `salloc -A g22019003 -p core -n 1 -t 02:00:00`

<br>

### Load modules

###### `module load bioinfo-tools`

###### `module load trimmomatic/0.36`

<br>

### _*Format sh file if edited on Windows_

###### `dos2unix sbatch sbatch_script_illumina.sh`

<br>

### Submit Batch Job

###### `sbatch sbatch_script_illumina.sh`
 
