## 🎬 VaricellaGen
A comprehensive pipeline for the genomic analysis of Varicella-zoster virus (VZV), the causative agent of chickenpox.

## 🏆 About
VaricellaGen is a modular and automated pipeline designed to simplify and standardize the genomic analysis of Varicella-zoster virus (VZV). It integrates quality control, variant calling, consensus genome generation, clade typing, and phylogenetic analysis into a streamlined workflow.


## 🏷️ Key Features:

1. Quality Control: Automatically cleans and filters raw sequencing reads to ensure data accuracy.
2. Variant Calling: Accurately identifies SNPs and indels using GATK, providing enhanced genomic insights.
3. Consensus Genome Generation: Produces high-quality, reference-based genome assemblies for downstream analysis.
4. Clade Typing: Rapidly classifies VZV isolates into established clades.
5. Phylogenetic Analysis: Generates robust phylogenetic trees using maximum likelihood and neighbor-joining methods.

## ⚙️  Installation

Make sure you have [Miniconda](https://conda.io/miniconda.html) or [Anaconda](https://docs.anaconda.com/free/anaconda/install/linux/) on your Linux system using the links provided
Clone the software from the offical repository using: 


`conda activate base`

`cd && git clone https://github.com/MicroBioGenoHub/VaricellaGen.git`

`cd VaricellaGen`

`conda env create -n VaricellaGen --file VarGen_installer.yml`

`bash setup.sh`

`cd && bash clean.sh` 

`rm -rf clean.sh`


