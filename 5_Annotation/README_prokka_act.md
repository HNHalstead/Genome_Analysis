# Annotation and Visualization

### Annotation Using Prokka

Loading modules

```
module load bioinfo-tools
module load java
module load prokka/1.12-12547ca
```
<br>
Running prokka locally

```
prokka --outdir prokka_combined_align --prefix e_faecium_combined_align_annot combined_alignment.fasta
```

<br>
<br>

### Synteny Comparison Using Artemis ACT

loading initial modules

```
module load bioinfo-tools
module load blast/2.7.1+
```

<br>
Making a reference file for synteny comparison

```
makeblastdb -in e_faecium_ref_seq.fasta -dbtype 'nucl' -out db/ref_db -parse_sequids
blastn -db e_faecium_ref_seq.fasta -query combined_alignment.fasta -outfmt 6 > e_faecium_vs_ref.act
```

<br>
Opening the Artemis ACT user interface

```
act
```

### *EggNog is a webtool and therefore can be read about on the wiki in the _Methods and Intermediate Results_ page
