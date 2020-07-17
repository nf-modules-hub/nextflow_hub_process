#!/usr/bin/env nextflow

/*
################
params
################
*/

ch_refFILE = Channel.value("$baseDir/refFILE")

inputUntrimmedRawFilePattern = "./*_{R1,R2}.fastq.gz"

inputTrimmedRawFilePattern = "./*_{R1,R2}.p.fastq.gz"

inputRawFilePattern = params.trimmed ? inputTrimmedRawFilePattern : inputUntrimmedRawFilePattern


Channel.fromFilePairs(inputRawFilePattern)
        .into {  ch_in_PROCESS }



process PROCESS {
#    publishDir 'results/PROCESS'
#    container 'PROCESS_CONTAINER'


    input:
    set genomeFileName, file(genomeReads) from ch_in_PROCESS

    output:
    path("""${PROCESS_OUTPUT}""") into ch_out_PROCESS


    script:
    #FIXME
    genomeName= genomeFileName.toString().split("\\_")[0]
    
    """
    CLI PROCESS
    """
}
