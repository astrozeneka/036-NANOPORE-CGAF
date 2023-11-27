#!/bin/bash
#SBATCH -p memory
#SBATCH -n 1 -c 16
#SBATCH -t 96:00:00
#SBATCH -J QC_GCAF
#SBATCH -A proj5034

source ~/.bashrc
mkdir -p data/01_fastqc_report

genomes=($(ls data/raw_reads/*/*))
genomes=(
  "PAM61407_pass_barcode05_736c5132_0.fastq.gz"
  "PAM61407_pass_barcode05_736c5132_100.fastq.gz"
  "PAM61407_pass_barcode05_736c5132_101.fastq.gz"
  "PAM61407_pass_barcode05_736c5132_102.fastq.gz"
  "PAM61407_pass_barcode05_736c5132_103.fastq.gz"
  "PAM61407_pass_barcode05_736c5132_104.fastq.gz"
  "PAM61407_pass_barcode05_736c5132_105.fastq.gz"
)
for genome in "${genomes[@]}"
do
  echo "Processing genome: ${genome}"
  fullpath=$(realpath data/raw_reads/*/*/$genome) # Full path to the genome fastq.gz file

  # 1. เช็กคุณภาพ reads
  fastqc $fullpath -o data/01_fastqc_report/ -t 16
  exit
done
echo "Done"

# ค้องสร้าง output ที่เป็น html

# 3. check contamination (เรพาะว่า fastqc เขาทำมาแล้ว) . experimental
# 4. สะกัดข้อมูล microsat
# 5. pack those information into an HTML/zip file
