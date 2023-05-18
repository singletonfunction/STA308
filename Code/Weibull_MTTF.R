rm(list=ls())
beta = 1/2
theta = 5000
pweibull(20000,beta,theta, lower.tail = FALSE)
MTTF=theta*exp(log(1/beta));MTTF