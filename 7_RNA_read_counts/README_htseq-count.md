### File conversion of GBK file to GTF

###### This is neccessary as the GFF that also is accepted by HTseq-count was not output by prokka into the correct format. Therefore
the GBK file produced by prokka was converted to a GTF file which is also compatible with HTseq-count.  

```
cat e_faecium_combined_align_annot.gbk | 7.1_gb2gtf.py > e_faecium_combined_align_annot.gtf
```

<br>

### Counting reads of RNA from _E. faecium_ grown in human serum

loading modules

```
module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1
```

```
sbatch sbatch_script_7.2_rna_serum_htseq_count.sh
```

<br>

### Counting reads of RNA from _E. faecium_ grown in BHI medium

loading modules

```
module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1
```

```
sbatch sbatch_script_7.3_rna_bh_htseq_count.sh
```
