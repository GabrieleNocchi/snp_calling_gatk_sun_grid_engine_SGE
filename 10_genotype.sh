#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l node_type=sdv
#$ -l h_vmem=10G
#$ -l h_rt=240:0:0
#$ -t 2-12

CHROM=$(sed -n "${SGE_TASK_ID}p" ./chromosomes.txt)

module load gatk

gatk GenotypeGVCFs -R /data/SBCS-BuggsLab/GabrieleNocchi/haplotypecaller_ref/Qrob_PM1N.fa -V gendb://import/$CHROM -new-qual -O ./final_variants/$CHROM\.vcf
