#!/bin/bash -ue
for f in FBA14966_pass_b7380ffb_b993a025_0.fastq.gz FBA14966_pass_b7380ffb_b993a025_1.fastq.gz; do
    echo "$f" >> "merge_order_b7380ffb.txt"
done
echo b7380ffb > merged.fastq.gz
