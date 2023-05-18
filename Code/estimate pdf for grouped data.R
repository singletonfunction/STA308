rm(list=ls())
ti = c(7, 47, 58, 74, 177, 232, 273, 285, 317, 429, 440, 445, 455, 468, 495, 497, 532, 571,579, 581 ,650, 702, 715, 779, 881, 900,930, 968, 1077, 1109, 1314, 1334, 1367, 1534,1712, 1784, 1877, 1886, 2045, 2056, 2260, 2429, 2509)
di = table(ti)
N = length(ti)
cum_sum_di = cumsum(di)
cum_sum_survivors = (N - cum_sum_di)
Emp_Surv_Fun = cum_sum_survivors/N
Emp_Surv_Fun =as.vector(Emp_Surv_Fun)
data.frame(ti,Emp_Surv_Fun)
Range = round(range(ti))
hi =200 #interval of Age
Intervals = seq(Range[1],Range[2],by=hi)
Intervals = c(Intervals,2607)
ti_as_interval = cut(ti,Intervals,right = F)
ti_Interval = levels(ti_as_interval)
ti_Freq = table(ti_as_interval)
di = as.vector(ti_Freq)
Ni = sort(cumsum(di),decreasing = T)
qi = di/Ni
pi = 1-qi
Pi = Ni/N
f_ti_star = di/(hi*N) #curve of deaths
data.frame(ti_Interval,di,Ni,qi,pi,Pi,f_ti_star)
Intervals = Intervals[1:(length(Intervals)-1)]
plot(ti,Emp_Surv_Fun,type = "l",
 main = paste("Plot Of Empirical Survival Function"),xlab="ti",ylab="S(x)",ylim = 
c(0,1),col="black",lwd=2)
lines(Intervals,Pi,type = "l",
 main = paste("Plot Of Pi"),xlab="Ages",ylab="Pi",col="green",lwd=2)
#Drawing The Legend
legend("topright",legend=c(expression(bold("Empirical Survival Function")),
 expression(bold("Survival function of grouped 
data"))),fill=c("black","green"))
#Plot of force of mortality
hist(ti,xlab="ti",lwd=2,probability = T,ylim=c(0,0.0015),col="green")
lines(Intervals,f_ti_star,type = "l",
 main = paste("Plot Of f_ti_star"),xlab="ti",ylab="f_ti_star",col="black",lwd=2)
legend("topright",legend=c(expression(bold("histogram of deaths")),
 expression(bold("pdf (curve of deaths)"))),fill=c("green","black"))