include {findFiles} from "./modules/findFiles.nf"
include {mergeAllFiles} from "./modules/mergeAllFiles.nf"
include {miminap} from "./modules/miminap.nf"

workflow {

    findFiles(params.dir)

    files_ch = Channel.fromPath("${params.dir}/**/*pass*.fastq.gz")
        .toSortedList { a, b -> a.name <=> b.name }

    mergeAllFiles(files_ch)

    if (params.miminap){
        miminap(mergeAllFiles.out[0])
    }

}

