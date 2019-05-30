# Creating a Combined Alignment File


### Mapping Illumina reads to PacBio reads using BWA-MEM

Load modules
```
module load bioinfo-tools
module load bwa/0.7.17
```

```
sbatch sbatch_script_4.1_illumina_pac_map_bwa.sh
```

<br>
<br>

### Converting SAM file to BAM file

###### This is necessary as SAM files take up significantly more space than its binary version, a BAM file

Load modules
```
module load bioinfo-tools
module load samtools/1.9
```

```
sbatch sbatch_script_4.2_illumina_pac_map_sam_to_bam.sh
```

<br>
<br>

### Creating fixing the PacBio Assembly with Illumina reads thereby creating a combined alignment of sorts

Load modules
```
module load bioinfo-tools
module load Pilon
```

```
sbatch sbatch_script_4.3_illumina_pac_combined_pilon.sh
```

<br>
<br>

### Running QUAST after making a combined/fixed alignment to visualize results

Load modules

```
module load bioinfo-tools
module load java
module load quast/4.5.4
```

```
#python /sw/apps/bioinfo/quast/4.5.4/rackham/bin/quast.py
python quast.py e_faecium_ref_seq.fasta -r combined_alignment.fasta -o quast_results_comb_to_ref
```
