# Genome_Analysis
### Genome_Analysis

## Project Plan

# Purpose:


To determine relevant genes found in E. faecium E745 that play a role in the 
vancomycin-resistant strain's growth in human serum by looking at differential expression 
analysis between rich medium and heat-inactivated serum conditions. Upon completetion, 
further investigation can be done to test which of the found genes were significant based on
Tn-Seq data analysis.



# What data is available?


FASTQ and FASTA files files of DNA, RNA, and Transposons



# Steps for Analysis


1. Genome assemlby of Pac-Bio DNA reads using _Canu_
2. Vizualization of Illumina DNA sequences with _FastQC_
3. Trimmimg of Illumina reads using _Trimmomatic_
4. Mapping Illumina reads to Pac-Bio Assembly:
     4.1 Using _BWA-MEM_ to map
     4.2 Converting _SAM_ files to _BAM_ using _SAMtools_
     4.3 Creating a combined genome assembly from mapping using _Pilon_
5. Annotation of the combined assembly:
     5.1 Using _Prokka_ for structural and functional annotation
     5.2 Synteny comparison Using _Artemis ACT_
6. RNA Mapping:
     6.1 For serum RNA using BWA-MEM
     6.2 For BH RNA using BWA-MEM
7. Counting RNA reads:
     7.1 Converting _.gbk_ to _.gtf_ with _gbk2gtf.py_
     7.2 Counting serum RNA reads using _HTseq-count_
     7.3 Counting BH RNA reads using _HTseq-count_
8. Differential expression using _DEseq2_









 

