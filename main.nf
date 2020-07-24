#!/usr/bin/env nextflow

/*
#==============================================
code documentation
#==============================================
*/


/*
#==============================================
params
#==============================================
*/

params.resultsDir = 'results/FIXME'
params.saveBy = 'copy'
params.trimmed = true


ch_refFILE = Channel.value("$baseDir/refFILE")

inputUntrimmedRawFilePattern = "./*_{R1,R2}.fastq.gz"

inputTrimmedRawFilePattern = "./*_{R1,R2}.p.fastq.gz"

inputRawFilePattern = params.trimmed ? inputTrimmedRawFilePattern : inputUntrimmedRawFilePattern


Channel.fromFilePairs(inputRawFilePattern)
        .into { ch_in_PROCESS }

/*
#==============================================
PROCESS
#==============================================
*/

process PROCESS {
    publishDir params.resultsDir, mode: params.saveBy
    container 'FIXME'


    input:
    set genomeFileName, file(genomeReads) from ch_in_PROCESS

    output:
    path FIXME into ch_out_PROCESS


    script:
    genomeName = genomeFileName.toString().split("\\_")[0]

    """
    CLI PROCESS
    """
}


/*
#==============================================
# extra
#==============================================
*/
