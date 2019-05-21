module load bioinfo-tools
module load blast/2.7.1+

makeblastdb -in e_faecium_ref_seq.fasta -dbtype 'nucl' -out db/ref_db -parse_sequids
blastn -db e_faecium_ref_seq.fasta -query combined_alignment.fasta -outfmt 6 > e_faecium_vs_ref.act

module load bioinfo-tools
module load java
module load artemis

act
