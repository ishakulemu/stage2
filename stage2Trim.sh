#!/bin/bash
mkdir trimmedFR reads
SAMPLES=(
  "Alsen"
  "Baxter"

)

for SAMPLE in "${SAMPLES[@]}"; do

  fastp \
    -i "$PWD/${SAMPLE}_R1.fastq.gz" \
    -i "$pwd/${SAMPLE}_R2.fastq.gz" \
    -o "trimmedFR_reads/${SAMPLE}_R1.fastq.gz" \
    -o "trimmedFR_reads/${SAMPLE}_R2.fastq.gz" \
    --thml "trimmedFR_reads/${SAMPLE}_fastp.html"
done