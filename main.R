###############################################################
# the main script

if(!requireNamespace("parallel")) install.packages("parallel")
source("R/utilities.R")

sink("output/output.txt")

cat(paste("Number of cores", parallel::detectCores()), "\n")

ptm <- proc.time()

ret = parallel::mclapply(1:10, func_wrapper)

write.table(ret, "output/results.dat")

proc.time() - ptm
