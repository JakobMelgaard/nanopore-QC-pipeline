#!/bin/bash -ue
path.view()
cat found_files.txt | xargs cat > merged_files.fastq.gz
