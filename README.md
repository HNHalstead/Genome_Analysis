# **Genome_Analysis**


## _Project Plan_


For Reproducibility purposes, the steps completed have been provided in a  list below. The files in this repository arranged to reflect this and contain further instruction within each folder. Details about analysis and steps can be found on the wiki along with a more detailed project plan while further instruction on running code can be found in the _README.md_ files contained within each folder.


### Purpose:


To determine relevant genes found in E. faecium E745 that play a role in the 
vancomycin-resistant strain's growth in human serum by looking at differential expression 
analysis between rich medium and heat-inactivated serum conditions as based off a study by Zhang (Zhang, 2017). Upon completetion, 
further investigation was done to investigate phage integration. Future studies might include comparison of 
resistance genes to prophage integration


### What data is available?


FASTQ and FASTA files files of DNA, RNA, and Transposons


## Analysis Overview
1. Genome assembly of Pac-Bio DNA reads using _Canu_  
2. Vizualization of Illumina DNA sequences with _FastQC_  
3. Trimming of Illumina reads using _Trimmomatic_  
4. Mapping Illumina reads to Pac-Bio Assembly:  
  4.1 Using _BWA-MEM_ to map    
  4.2 Converting _SAM_ files to _BAM_ using _SAMtools_  
  4.3 Creating a combined genome assembly from mapping using _Pilon_    
  4.4 QUAST 
5. Annotation of the combined assembly:    
  5.1 Using _Prokka_ for structural and functional annotation  
  5.2 Using _eggNog-Mapper_ for functional annotation  
  5.3 _Artemis ART_ and _ACT_ used for Visualization and Synteny
6. RNA Mapping:  
  6.1 For serum RNA using BWA-MEM and converted to to BAM using SAMtools 
  6.2 For BHI RNA using BWA-MEM and converted to to BAM using SAMtools 
7. Counting RNA reads:  
  7.1 Converting _.gbk_ to _.gtf_ with _gbk2gtf.py_  
  7.2 Counting serum RNA reads using _HTseq-count_  
  7.3 Counting BHI RNA reads using _HTseq-count_  
8. Differential expression using _DEseq2_   
9. Interpretation and Other Analysis**  


**See _Results and Discussion_ page for the interpretation of DEseq2 and other analysis results.








 

