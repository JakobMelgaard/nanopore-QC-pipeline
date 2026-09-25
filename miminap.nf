process miminap {

    input:
    path fastq
    
    output:
    path "mapped.${params.extenssion}"

    script:
    """
    minimap2 -ax map-ont -t ${task.cpu} ${params.reference_genome} ${fastq} | samtools sort -@ ${task.cpus} -O ${params.extenssion} -o mapped.${params.extenssion}
    """
}
