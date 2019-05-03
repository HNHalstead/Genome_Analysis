#From the Directory /home/hoha8653/GenomeAnalysis/RNA/RNA_Seq_Serum
salloc -A g2019003 -p core -n 2 -t 02:00:00
sbatch /home/hoha8653/GenomeAnalysis/Genome_Analysis/RNA_mapping/sbatch_script_rna_serum_map_bwa.sh

salloc -A g2019003 -p core -n 2 -t 02:00:00
sbatch /home/hoha8653/GenomeAnalysis/Genome_Analysis/RNA_mapping/sbatch_script_rna_bh_map_bwa.sh
