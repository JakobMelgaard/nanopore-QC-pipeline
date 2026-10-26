#!/bin/bash -ue
echo found_files.txt
cat ~/found_files.txt | xargs cat > merged_files.fastq.gz
