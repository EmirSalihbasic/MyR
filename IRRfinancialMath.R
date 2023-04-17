#Calculating Internal Rate of return
#Npv is ofc zero so we dont need to add it.
#times are period for each of cash flows

library(FinancialMath)
IRR(cf0=1,cf=c(1,2,1),times=c(1,3,4))