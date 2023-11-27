#!/bin/bash

genomes=($(ls data/raw_reads/*.*))
for genome in "${genomes[@]}"
do
  echo "Processing genome: ${genome}"
done
echo "Done"

# ค้องสร้าง output ที่เป็น html

# 1. get the number of reads in each fastq file
# 2. get the GC% of the reads
# 3. check contamination (เรพาะว่า fastqc เขาทำมาแล้ว) . experimental
# 4. สะกัดข้อมูล microsat
# 5. pack those information into an HTML/zip file
