#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l node_type=sdv
#$ -l h_vmem=10G
#$ -l h_rt=240:0:0

module load gatk

gatk GenotypeGVCFs -R /data/SBCS-BuggsLab/GabrieleNocchi/haplotypecaller_ref/Qrob_PM1N.fa -V gendb://import/Qrob_Chr02 --intervals Qrob_Chr02:1-55000000 -new-qual -O ./final_variants/Qrob_Chr02_part1.vcf

