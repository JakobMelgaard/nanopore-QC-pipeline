#!/bin/bash -ue
for f in FBA17307_pass_24c7392b_cc0d96aa_0.fastq.gz FBA17307_pass_24c7392b_cc0d96aa_1.fastq.gz FBA17307_pass_24c7392b_cc0d96aa_02.fastq.gz; do
    echo "$f" >> "merge_order_24c7392b.txt"
done
cat FBA17307_pass_24c7392b_cc0d96aa_0.fastq.gz FBA17307_pass_24c7392b_cc0d96aa_1.fastq.gz FBA17307_pass_24c7392b_cc0d96aa_02.fastq.gz > merged_24c7392b.fastq.gz
