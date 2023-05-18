rm(list=ls())
activities = c(0.360,1.189,0.614,0.273,2.464,0.571,1.827,0.537,0.374,0.262 ,0.448, 0.971, 0.372, 0.898, 0.411, 1.925, 0.550, 0.622, 0.610, 0.319, 0.406, 0.767, 0.385, 0.674, 0.521, 0.603, 0.533, 1.177, 0.307, 1.499)
n = length(activities);n
mean_act<-mean(activities);mean_act
sd_act<-sqrt(var(activities));sd_act
# for 95% confidence
alpha <- 0.05
error<-qnorm(1-alpha/2)*(sd_act/sqrt(n))
error
# for Lower limit
Mean_l<- mean_act - error
Mean_l
# for upper limit
Mean_u<- mean_act + error
Mean_u