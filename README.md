## VaricellaGen
A comprehensive pipeline for the genomic analysis of Varicella-zoster virus (VZV), the causative agent of chickenpox.


## About
VaricellaGen is a modular and automated pipeline designed to simplify and standardize the genomic analysis of Varicella-zoster virus (VZV). It integrates quality control, variant calling, consensus genome generation, clade typing, and phylogenetic analysis into a streamlined workflow.


## Key Features:

1. Quality Control: Automatically cleans and filters raw sequencing reads to ensure data accuracy.
2. Variant Calling: Accurately identifies SNPs and indels using GATK, providing enhanced genomic insights.
3. Consensus Genome Generation: Produces high-quality, reference-based genome assemblies for downstream analysis.
4. Clade Typing: Rapidly classifies VZV isolates into established clades.
5. Phylogenetic Analysis: Generates robust phylogenetic trees using maximum likelihood and neighbor-joining methods.

## Installation

Make sure you have [Miniconda](https://conda.io/miniconda.html) or [Anaconda](https://docs.anaconda.com/free/anaconda/install/linux/) on your Linux system using the links provided
Clone the software from the offical repository using: 


`conda activate base`

`cd && git clone https://github.com/MicroBioGenoHub/VaricellaGen.git`

`cd VaricellaGen`

`conda env create -n VaricellaGen --file VarGen_installer.yml`

`bash setup.sh`

Run the program to make sure you have access to all the plug-ins using the command `VaricellaGen -h` to view output below:

```bash

This is VaricellaGen $version
Developed and maintained by Stephen Kanyerezi, Ivan Sserwadda, Jupiter Marina Kabahita, & Gerald Mboowa

Synopsis:
        VaricellaGen is a modular and automated pipeline designed to simplify and standardize the genomic analysis of Varicella-zoster virus (VZV). It integrates quality control, variant calling, consensus genome generation, clade typing, and phylogenetic analysis into a streamlined workflow.

Usage: 
        Given paired reads, to run perform variant calling, clade typing and consensus genome generation; VaricellaGen [options] -f <path of forward read> -r <path of reverse read> -o <output directory to be created> --typing true
        Given paired reads, to perform variant calling and generate a consensus genome without clade typing; VaricellaGen [options] -f <path of forward read> -r <path of reverse read> -o <output directory to be created> --varcall true
        Given a multifasta file, to perform phylogeny; VaricellaGen [options] --consensus <path of multifasta file> --phylogeny true -o <output directory to be created> 

General:
        -h/--help       Show this help menu
        -v/--version    Print version and exit
        -x/--citation   Show citation and exit

Mandatory options for paired reads:
        -f/--forward-read       Path of the forward reads [either .fastq or .fastq.gz]

        -r/--reverse-read       Path of the reverse reads [either .fastq or .fastq.gz]

        --consensus             Path of mulitfasta file. Applicable if you want to perform phylogenetics

        -o/--output-dir         Directory to be created for results

        --typing                 [true or false (default)] Run the pipeline to generate variants, clade typing, and consensus genome.

        --varcall               [true or false (default)] Genrate variants and consensus genome only.

        --phylogeny             [true or false (default)] construct a phylogenetic tree. Applicable only with --consensus option and if --varcall and --typing not set to true

Other options:

        --cores                 Number of cpus to use. Default=16
                     
For further explanation please visit: https://github.com/MicroBioGenoHub/VaricellaGen

```

## How ro Run

If you want to perform variant calling, consensus genome generation, and clade typing, run the command below

```
VaricellaGen -o <output_dir> -f <forward read path> -r <reverse read path> --typing true
```

If you want to perform variant calling and consensus genome generation only, run the command below

```
VaricellaGen -o <output_dir> -f <forward read path> -r <reverse read path> --varcall true
```

If you have a multi fasta file and you want to perform phylogenetics, run the command below

```
VaricellaGen -o <output_dir> --consensus <path to multi fasta file> --phylogeny true
```

## Output Files

Here we describe the output files generated from the analysis pipeline. The outputs are organized into different directories based on their function.

### Directory Structure

| Directory      | File(s)               | Description |
|--------------|----------------------|-------------|
| **alignment/**  | BAM File | Contains the aligned sequencing reads, used for downstream variant calling and consensus genome generation. |
| **clade/**  | clade.csv | CSV file with a header row, followed by sequence IDs and their corresponding clades, used for phylogenetic classification. |
| **consensus/**  | Consensus FASTA File | Contains the final consensus genome sequence. |
|              | Metrics File | Reports genome coverage and N-content statistics. |
| **qc/**  | HTML Files | Contain quality control (QC) reports. |
|              | trimmed_fastq/ | A subdirectory containing trimmed FASTQ files after quality filtering and adapter removal. |
| **variants/**  | GVCF File | Stores variant calls in genomic variant call format (gVCF). |
|              | Decomposed VCF File | A normalized version of the variant call file. |
|              | Fixed & Ambiguous VCF Files | Processed VCF files having fixed and ambiguous variants. |
|              | mask.txt | A text file listing masked regions in the consensus genome. |
| **phylogeny/**  | msa | A subdirectory containing an MSA file |
|                 | tree | A subdirectory containing the nexus tree |

