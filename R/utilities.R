###############################################################
# Utilities functions that will be called in another file

if(!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("yukai-yang/FE")

func_wrapper <- function(num){
    mR = as.matrix(FE::portfolio_m[,25:124])
    vRf = as.matrix(FE::portfolio_m[,"Tbill"])
    mZ = mR - c(vRf)

    vRm = as.matrix(FE::portfolio_m[,"Market"])
    vZm = c(vRm - vRf)

    ret = FE::Fama_MacBeth(mZ, vZm)

    if(num <= length(ret)){ return(ret[[num]])
    }else return(NULL)
}

