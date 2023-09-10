#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=8G
#$ -l h_rt=240:0:0
#$ -t 1-134


INPUT1=$(sed -n "${SGE_TASK_ID}p" ./list1.txt)
INPUT2=$(sed -n "${SGE_TASK_ID}p" ./list2.txt)
OUTPUT1=$(sed -n "${SGE_TASK_ID}p" ./list3.txt)
OUTPUT2=$(sed -n "${SGE_TASK_ID}p" ./list4.txt)

# Load the application module
module load trimmomatic/0.36

java -jar /share/apps/centos7/trimmomatic/0.36/trimmomatic-0.36.jar PE -phred33 $INPUT1 $INPUT2 ./trimming_output/$OUTPUT1\_paired.fq.gz ./trimming_output/$OUTPUT1\_unpaired.fq.gz ./trimming_output/$OUTPUT2\_paired.fq.gz ./trimming_output/$OUTPUT2\_unpaired.fq.gz ILLUMINACLIP:/data/SBCS-BuggsLab/GabrieleNocchi/adapters.fa:2:30:10:4 HEADCROP:5 SLIDINGWINDOW:4:20 MINLEN:70

# Generated by Job Script Builder on 2018-10-04
# For assistance, please email its-research-support@qmul.ac.uk

