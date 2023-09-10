
##!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 4
#$ -l h_vmem=1G
#$ -l h_rt=70:0:0
#$ -t 1-63

INPUT1=$(sed -n "${SGE_TASK_ID}p" list1.txt)
INPUT2=$(sed -n "${SGE_TASK_ID}p" list2.txt)
OUTPUT=$(sed -n "${SGE_TASK_ID}p" list3.txt)

# Load the application module
module load bwa/0.7.15

bwa mem -M -t 4 /data/SBCS-BuggsLab/GabrieleNocchi/bwa_index/Qrob_PM1N.fa $INPUT1 $INPUT2 > /data/SBCS-BuggsLab/GabrieleNocchi/Oak/batch_8/bwa_output/$OUTPUT\.sam

# Generated by Job Script Builder on 2018-11-21
# For assistance, please email its-research-support@qmul.ac.uk
