#!/bin/bash -ue
println "Merging files for sample: 24c7392b"
for f in FBA17307_pass_24c7392b_cc0d96aa_1.fastq.gz FBA17307_pass_24c7392b_cc0d96aa_0.fastq.gz; do
    echo "$f" >> merge_order.txt
done
echo hi > merged.fastq.gz
