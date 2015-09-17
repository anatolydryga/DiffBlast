# DiffBlast

find number of reads that align to one BLAST database but not the other.

# Usage

````
Rscript diff_blast.R -s sample_blast.out -r reference_blast.out -n sample_name
```

Find number of reads that aligned only to reference  `reference_blast.out` 
but not to sample `sample_blast.out`   and report it to stdout.

Files are result of running blast with corresponding databases. The first
column should be read identifier and file is tab-separated(e.g. outfmt = 6).

# Output
Prints to std output:
sample_name number

Separator is TAB.

