#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l node_type=sdv
#$ -l h_vmem=10G
#$ -l h_rt=240:0:0

module load gatk

gatk GenomicsDBImport --sample-name-map cohort.sample_map --genomicsdb-workspace-path ./import/scaffolds_db --intervals intervals.list --batch-size 10
