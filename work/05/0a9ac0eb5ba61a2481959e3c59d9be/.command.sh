#!/bin/bash -ue
cat found_files.txt | xargs cat > merged_files.fastq.gz
