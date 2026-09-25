process miminap {

    input:
    path fastq
    
    output:
    path "mapped.bam"

    script:
    """
    minimap2 -ax map-ont -t ${task.cpu} ${params.reference_genome} ${fastq} | samtools sort -@ ${task.cpu} -o -- | samtools view -b -o mapped.bam
    """
}
