##### Practical 7
rm(list=ls())
mu=15.4
x_bar=14.6
sd=2.5
n=35
alpha=0.05
z=(x_bar-mu)/(sd/sqrt(n))
z
z_cri_l=qnorm(alpha/2,lower.tail=TRUE)
z_cri_u=qnorm(alpha/2,lower.tail=FALSE)
z_cri=c(z_cri_l,z_cri_u)
z_cri

## the test statistics -1.8931 lies between critical value -1.955 and 1.955 . hence at 5% significance level, we do not reject the null hypothesis 
## that the mean penguin weight does not differe from last year