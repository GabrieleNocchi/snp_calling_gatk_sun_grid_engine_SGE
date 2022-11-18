#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l node_type=nxv
#$ -l h_rt=70:0:0
#$ -l h_vmem=8G


cp  Qrobur.vcf.gz /data/SBCS-BuggsLab/
