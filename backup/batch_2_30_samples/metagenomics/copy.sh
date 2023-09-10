#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=1G
#$ -l h_rt=24:0:0


cp *.gz /data/SBCS-BuggsLab/OakMetagenomics/batch_2/
