
module load bioinfo-tools
module load java
module load prokka/1.12-12547ca

prokka --outdir prokka_combined_align --prefix e_faecium_combined_align_annot combined_alignment.fasta
