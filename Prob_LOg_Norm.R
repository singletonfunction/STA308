rm(list=ls())
mean = 6
sd = 1.2
x = 500
#probability that life exceeds 500 hr p(X>500)
P = plnorm(x,meanlog = mean,sdlog = sd,lower.tail = F)
P

