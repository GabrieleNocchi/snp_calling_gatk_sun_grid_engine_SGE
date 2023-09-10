#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=1G
#$ -l h_rt=24:0:0


module load samtools


for f in *.vcf; do
   bgzip "$f"
done
