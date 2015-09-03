library(argparse, quietly=TRUE)

parser <- ArgumentParser(description="What reads aligned only to ref but not sample")
parser$add_argument("-s", "--sample", type="character", required=TRUE)
parser$add_argument("-r", "--reference", type="character", required=TRUE)

args <- parser$parse_args()

sample_file_name <- args$sample
ref_file_name <- args$reference

sample <- read.delim(sample_file_name, header=FALSE)
ref <- read.delim(ref_file_name, header=FALSE)

sample_id <- sample[, 1]
ref_id <- ref[, 1]

only_ref_id <- setdiff(ref_id, sample_id)
write(length(only_ref_id), stdout())
