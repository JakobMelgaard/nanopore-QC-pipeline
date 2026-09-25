process findFiles {
    input:
    path dir

    output:
    tuple path("found_files.txt") val(ID)

    script:
    """
    find -L ${dir} -type f -name "*pass*.fastq.gz" > found_files.txt
// something taht return the id ie the last part of the directory name of the directory after no_sampel_id
    """
}

