include { FASTQC } from './modules/fastqc.nf'
include { TRIM }   from './modules/trim.nf'

workflow {
    FASTQC()
    TRIM()
}
