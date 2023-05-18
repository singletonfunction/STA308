dementia_data = c(0.5,1,1.25,1.41,1.42,1.58,1.66,1.67,2.25,2.33,2.92,3.08,3.75,3.92,4.17,4.67,5,5.25,5.83,7.25,8.50,9.33,10.33,11.25,12.5)
n_dd = 74 + dementia_data
q = length(dementia_data)
x = rep(1, q)
y = cumsum(x)
z = y / q
est = 1 - z
est
t = data.frame(n_dd,est);t
plot(type='l',n_dd,est,xlab="Ages",ylab="S(x)",main = 'EMPERICAL SURIVAL FUNCTION')



