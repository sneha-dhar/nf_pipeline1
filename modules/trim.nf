process TRIM {

    tag "$reads"

    input:
    path reads

    output:
    path "trimmed.fastq.gz"

    script:
    """
    trimmomatic SE -phred33 \
      $reads trimmed.fastq.gz \
      LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
    """
}
