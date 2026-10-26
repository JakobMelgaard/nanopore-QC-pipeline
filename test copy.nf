process findFiles {
    input:
    path dir

    output:
    path "found_files.txt"

    script:
    """
    find -L ${dir} -type f -name "*pass*.fastq.gz" > found_files.txt
    """
}

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

/*
 * Pipeline parameters
 */
params {
    dir: Path
}

workflow {
    dir       = file(params.dir)


    findFiles(params.dir)

    /* files_ch = findFiles.out
        .splitText()
        .map { it.trim() }
        .filter { it }
        .map { file(it) }

    files_ch.view()

    mergeAllFiles(files_ch.collect()) */

    files_ch = Channel.fromPath("${params.dir}/**/*.fastq.gz")
        .toSortedList { a, b -> a.name <=> b.name }
    files_ch.view()

    id_ch =Channel.fromPath("${params.dir}/no_sample_id/")

    mergeAllFiles(files_ch)

}

