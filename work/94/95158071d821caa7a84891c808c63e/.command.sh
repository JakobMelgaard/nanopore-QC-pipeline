#!/bin/bash -ue
find -L 20250326_Coriell_Na12217_283ng -type f -name "*pass*.fastq.gz" | while read -r f; do
    base=$(basename "$f")
    sample_id=$(echo "$base" | sed -E 's/.*_pass_([^_]+)_.*/\1/')
    echo -e "${sample_id}	${f}"
done > found_files.txt
