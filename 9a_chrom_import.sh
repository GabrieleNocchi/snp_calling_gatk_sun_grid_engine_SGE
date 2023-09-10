#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l node_type=sdv
#$ -l h_vmem=10G
#$ -l h_rt=240:0:0
#$ -t 1-12


CHROM=$(sed -n "${SGE_TASK_ID}p" ./chromosomes.txt)

module load gatk

gatk GenomicsDBImport --sample-name-map cohort.sample_map --genomicsdb-workspace-path ./import/$CHROM  --intervals $CHROM --batch-size 10
