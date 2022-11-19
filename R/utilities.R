###############################################################
# Utilities functions that will be called in another file

if(!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("yukai-yang/FE")

mR = as.matrix(portfolio_m[,25:124])
vRf = as.matrix(portfolio_m[,"Tbill"])
mZ = mR - c(vRf)

vRm = as.matrix(portfolio_m[,"Market"])
vZm = c(vRm - vRf)

ret = Fama_MacBeth(mZ, vZm)
