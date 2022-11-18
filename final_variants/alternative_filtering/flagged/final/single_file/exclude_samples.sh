#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l node_type=nxv
#$ -l h_rt=70:0:0
#$ -l h_vmem=8G


module load bcftools

bcftools view  Qrobur.vcf.gz -s ^X61,FF2,FD5,EF10,EA12,EA9,Y65,z_122,X66,X26,Y64,Y77,X37,X77,T39,C53,C6,z_68,Y79,FG8,Y74,Y82,X27,C85,EG9,C63 -Oz -o 432.vcf.gz
