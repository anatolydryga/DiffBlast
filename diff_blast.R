library(argparse, quietly=TRUE)

parser <- ArgumentParser(description="What reads aligned only to ref but not sample")
parser$add_argument("-s", "--sample", type="character", required=TRUE)
parser$add_argument("-r", "--reference", type="character", required=TRUE)
parser$add_argument("-n", "--name", type="character", required=TRUE)

args <- parser$parse_args()

sample_file_name <- args$sample
ref_file_name <- args$reference
sample_name <- args$name

sample <- read.delim(sample_file_name, header=FALSE)
ref <- read.delim(ref_file_name, header=FALSE)

sample_id <- sample[, 1]
ref_id <- ref[, 1]

only_ref_id <- setdiff(ref_id, sample_id)
cat(sample_name, length(only_ref_id), "\n", sep="\t")
