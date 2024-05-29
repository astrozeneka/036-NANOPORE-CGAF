#!/bin/bash
#SBATCH -p compute
#SBATCH -n 1 -c 96
#SBATCH -t 120:00:00
#SBATCH -J MSNavigator
#SBATCH -A proj5057

# use hifasm instead


#module load canu/1.9-GCCcore-8.3.0-Java-11

hifiasm -o CGAF001.asm --h1 <Pacbio Hifi> \
  --h2 <Nanopore CGAF> \
  --h3 <HiC>

#canu \
#  -p data/GCAF \
#  -d data/GCAF_ONT \
#  genomeSize=900m \
#  -nanopore "data/.fastq"

# ย่าลืมลบ raw data พอ assembly เสร็จ
