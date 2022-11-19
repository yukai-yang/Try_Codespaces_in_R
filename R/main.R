###############################################################
# the main script

if(!requireNamespace("parallel")) install.packages("parallel")
source("utilities.R")

sink("output.txt")

cat(paste("Number of cores", parallel::detectCores()), "\n")

ptm <- proc.time()

ret = parallel::mclapply(1:10, func_wrapper)

write.table(ret, "results.dat")

proc.time() - ptm
