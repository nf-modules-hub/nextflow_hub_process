# Nextflow wrapper for `FIXME` process.

## Pre-requisites

- Nextflow
- Docker 

**NOTE** If you plan to setup a basic server, then you can refer [minimal-nextflow-setup](https://github.com/nextflow-hub/minimal-nextflow-setup)

## Usage

```
nextflow run https://github.com/nextflow-hub/FIXME
```

## Options

- `trimmed` and `untrimmed` input files

By default the pipeline assumes the files to follow the `*.p.fastq.gz` format. For untrimmed files i.e. `*.fastq.gz` pattern simply add the `trimmed` option as false.

```
nextflow run https://github.com/nextflow-hub/fastqc --trimmed false
```
- `resultsDir`

**NOTE**: By default, it stores the result files locally into `results/fastqc` directory.


## Contribution

Contribution, in all forms, is most welcome!
