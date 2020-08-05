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
params.saveMode = 'copy'
params.filePattern = "./*_{R1,R2}.fastq.gz"


ch_refFILE = Channel.value("$baseDir/refFILE")



Channel.fromFilePairs(params.filePattern)
        .into { ch_in_PROCESS }

/*
#==============================================
PROCESS
#==============================================
*/

process PROCESS {
    publishDir params.resultsDir, mode: params.saveMode
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
