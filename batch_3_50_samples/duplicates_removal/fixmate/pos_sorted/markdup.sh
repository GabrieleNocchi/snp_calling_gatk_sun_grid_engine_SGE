#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=4G
#$ -l h_rt=240:0:0
#$ -t 1-184


INPUT=$(sed -n "${SGE_TASK_ID}p" list1.txt)
OUTPUT=$(sed -n "${SGE_TASK_ID}p" list2.txt)

# Load the application module
module load samtools

samtools markdup -r -s $INPUT ./deduplicated/$OUTPUT\.bam

# Generated by Job Script Builder on 2018-10-26
# For assistance, please email its-research-support@qmul.ac.uk
