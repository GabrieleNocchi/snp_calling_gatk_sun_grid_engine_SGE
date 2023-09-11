#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=8G
#$ -l h_rt=48:0:0

# Load the application module
module load gatk/4.0.8.1

gatk CreateSequenceDictionary -R= Qrob_PM1N.fa -O= Qrob_PM1N.dict

# Generated by Job Script Builder on 2018-10-26
# For assistance, please email its-research-support@qmul.ac.uk

