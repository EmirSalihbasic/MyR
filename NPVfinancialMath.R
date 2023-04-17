#Calculating Net Present Value,
#times = vector of the times for each cash flow

library(FinancialMath)
NPV(cf0=100,cf=c(50,40,40),times=c(3,5,2),i=.01)
