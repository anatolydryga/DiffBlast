# DiffBlast
find number of reads that align for one BLAST db but not other.

# Usage

````
Rscript diff_blast.R -s sample_blast.out -r reference_blast.out
```

Find number of reads that aligned only to `reference_blast.out` 
but not to `sample_blast.out`   and report it to stdout.


