#!/bin/bash -ue
for f in FBA14966_pass_b7380ffb_b993a025_2.fastq.gz FBA14966_pass_b7380ffb_b993a025_10.fastq.gz; do
    echo "$f" >> "merge_order_b7380ffb.txt"
done
cat FBA14966_pass_b7380ffb_b993a025_2.fastq.gz FBA14966_pass_b7380ffb_b993a025_10.fastq.gz > merged_b7380ffb.fastq.gz
