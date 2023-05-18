ti = c(4,5,6,8,8,8,10,10,11,12)
b=(rank(-ti,ties.method = 'min')-1)/10
c = data.frame(ti,b);c
plot(ti,b,type='s', xlab = "failure time", ylab = "S(x)", main = "Survival
Function")