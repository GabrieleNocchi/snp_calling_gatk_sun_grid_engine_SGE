##!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=1G
#$ -l h_rt=70:0:0

for file in *; do
    if [[ -f "$file" ]]; then
        md5sum -- "$file" > "${file}.md5"
    fi
done
