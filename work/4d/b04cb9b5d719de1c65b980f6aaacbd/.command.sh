#!/bin/bash -ue
echo "Merging files for sample: b7380ffb"
for f in FBA14966_pass_b7380ffb_b993a025_0.fastq.gz FBA14966_pass_b7380ffb_b993a025_1.fastq.gz; do
    echo "$f" >> merge_order.txt
done
echo hi > merged.fastq.gz
