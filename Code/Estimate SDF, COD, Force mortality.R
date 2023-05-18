rm(list=ls())
Surv_Time70 = c(0.50,0.83,1.17,1.25, 1.66, 1.67, 1.83, 3.17, 4.17, 4.92, 5.58, 6.58, 6.92,8.16, 1.50)
Age_at_death70 = 70+Surv_Time70
Surv_Time71 = c(0.50, 0.83, 1.25, 1.33, 1.67, 1.83, 3.42, 3.42, 3.92, 4.92, 5.75, 6.92,7.83,7.84, 9.00, 9.17, 13.83, 18.08)
Age_at_death71 = 71+Surv_Time71
Surv_Time72 = c(0.50, 1.00, 1.08, 1.42, 1.58, 1.59, 2.00, 2.33, 2.67, 3.58, 4.08, 4.17,5.75,6.25, 7.00, 7.08, 9.92, 10.17, 11.25, 12.67, 21.00, 21.83)
Age_at_death72 = 72+Surv_Time72
Surv_Time73 = c(0.58, 1.08, 1.25, 1.67, 2.00, 2.08, 2.17, 3.75, 4.25, 4.58, 4.92, 5.25,6.75,7.83, 7.84, 9.17, 11.50)
Age_at_death73 = 73+Surv_Time73
Surv_Time74 = c(0.50,1.00,1.25,1.41,1.42,1.58,1.66,1.67,2.25,2.33,2.92,3.08,3.75,3.92,4.17,4.67,5.00,5.25,5.83,7.25,8.50,9.33,10.33,11.25,12.50)
Age_at_death74 = 74+Surv_Time74
Age_at_death = c(Age_at_death70,Age_at_death71,Age_at_death72,Age_at_death73,Age_at_death74)
N = length(Age_at_death)
Range = round(range(Age_at_death))
hi =1 
Age_Intervals = seq(Range[1],Range[2],by=hi)
Age_as_interval = cut(Age_at_death,Age_Intervals,right = F)
Age_Interval = levels(Age_as_interval)
Deaths_Freq = table(Age_as_interval)
di = as.vector(Deaths_Freq)
Ni = sort(cumsum(di),decreasing = T)
qi = di/Ni
pi = 1-qi
Pi = Ni/N
SE_Pi = Pi*(1-Pi)/N #Standard error of Pi
f_ti_star = di/(hi*N) #curve of deaths
mu_ti_star = (-1/hi)*(log((Ni - di)/Ni)) #force of mortality
#required mortality table
data.frame(Age_Interval,di,Ni,qi,pi,Pi,SE_Pi,f_ti_star,mu_ti_star)
Age_Intervals = Age_Intervals[1:24]
plot(Age_Intervals,Pi,type = "l",
 main = paste("Plot Of Pi"),xlab="Ages",ylab="Pi",ylim = c(0,1),xlim = c(70,100),col="black",lwd=2)
lines(Age_Intervals,f_ti_star,col = "red")
lines(Age_Intervals,mu_ti_star,col = "blue")
legend("topright",legend = c("Pi","f_ti_star","mu_ti_star"),fill = c("black","red","blue"))