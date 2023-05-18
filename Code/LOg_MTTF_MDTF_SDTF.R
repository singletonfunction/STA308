rm(list=ls())
x = c(22.3,26.8,30.3,31.9,32.1,33.3,33.7,33.9,34.7,36.1,36.4,36.5,36.6,37.1,37.6,38.2,38.5,38.7,38.7,38.9,38.9,39.1,41.1,41.1,41.1,42.4,43.6,43.8,44,45.3,45.8,50.4,51.3,51.4,51.5)
y = log(x)
mu_cap = mean(y)
mu_cap
sig_cap = sqrt(var(y))
sig_cap
mttf<-exp(mu_cap + (sig_cap**2)/2)
mttf
sdtf<-sqrt((exp((sig_cap**2)-1))*exp(2*mu_cap + sig_cap**2))
sdtf
mdtf<-exp(mu_cap)
mdtf
