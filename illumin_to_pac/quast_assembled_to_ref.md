

module load bioinfo-tools
module load java
module load quast/4.5.4

#python /sw/apps/bioinfo/quast/4.5.4/rackham/bin/quast.py
python quast.py e_faecium_ref_seq.fasta -r combined_alignment.fasta -o quast_results_comb_to_ref
