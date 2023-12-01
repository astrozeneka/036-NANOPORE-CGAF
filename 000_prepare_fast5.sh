#!/bin/bash
#SBATCH -p memory
#SBATCH -n 1 -c 2
#SBATCH -t 120:00:00
#SBATCH -J Fast5_extract
#SBATCH -A proj5034

conda activate poretools

directory="data/raw_reads/X401SC22051417-Z01-F001_06/20220612_1539_1F_PAM61407_01a82a97"
/tarafs/data/project/proj5057-AGBKUB/ryan/Softwares/Fast5-to-Fastq/venv/bin/python \
  /tarafs/data/home/hrasoara/proj5057-AGBKUB/ryan/Softwares/Fast5-to-Fastq \
  "${directory}"
echo "Done"
