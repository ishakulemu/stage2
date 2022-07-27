#!/bin/bash
mkdir outputrimmedFR reads
SAMPLES=(
  "Alsen"
  "Baxter"

)

for SAMPLE in "${SAMPLES[@]}"; do

  fastp \
    -i "$PWD/${SAMPLE}_R1.fastq.gz" \
    -i "$pwd/${SAMPLE}_R2.fastq.gz" \
    -o "outputrimmedFR_reads/${SAMPLE}_R1.fastq.gz" \
    -o "outputrimmedFR_reads/${SAMPLE}_R2.fastq.gz" \
    --html "outputrimmedFR_reads/${SAMPLE}_fastp.html"
done