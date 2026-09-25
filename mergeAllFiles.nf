process mergeAllFiles {
    debug true

    input:
    path files

    output:
    path "merged.fastq.gz"
    path "merge_order.txt"

    script:
    """
    for f in ${files}; do
        echo "\$f" >> merge_order.txt
    done
    cat ${files} > merged.fastq.gz
    """
}

