###############################################################
# the main script

n = 10

if(!requireNamespace("parallel")) install.packages("parallel")
source("R/utilities.R")

sink("output/output.txt")

cat(paste("Number of cores", parallel::detectCores()), "\n")

ptm <- proc.time()

ret = parallel::mclapply(1:n, func_wrapper)

for(iter in 1:n){
  if(!is.null(ret[[iter]]))
    write.table(ret[[iter]], paste0("output/result",iter,".dat"))
}

proc.time() - ptm
