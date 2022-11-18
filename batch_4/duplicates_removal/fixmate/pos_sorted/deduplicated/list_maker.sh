#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=1G
#$ -l h_rt=240:0:0
#$ -t 1-61

NUM=${SGE_TASK_ID}
SAMPLE=$(sed -n "${SGE_TASK_ID}p" list.txt)


find . -type f -name "$SAMPLE*.bam" > list_$NUM\.list
# Generated by Job Script Builder on 2018-10-26
# For assistance, please email its-research-support@qmul.ac.uk

