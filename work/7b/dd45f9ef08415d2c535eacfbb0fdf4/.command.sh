#!/bin/bash -ue
for f in ; do
    echo "$f" >> merge_order.txt
done
cat  > merged.fastq.gz
