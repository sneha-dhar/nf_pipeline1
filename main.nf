nextflow.enable.dsl = 2

include { FASTQC } from './modules/fastqc.nf'
include { TRIM }   from './modules/trim.nf'

workflow {

    Channel
        .fromPath('data/sample.fastq.gz')
        .set { reads }

    FASTQC(reads)
    TRIM(reads)
}


