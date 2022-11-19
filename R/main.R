###############################################################
# the main script

set.seed(100)

source("utilities.R")

write.table(ret$gamma_1, "output.txt")