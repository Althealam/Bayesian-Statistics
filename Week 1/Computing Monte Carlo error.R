set.seed(32)

m<-100
a<-2.0
b<-1.0/3.0

theta=rgamma(n=m,shape=a,rate=b)
theta

hist(theta,freq=FALSE)
curve(dgamma(x,shape=a,rate=b))

sum(theta)/m
mean(theta)
a/b

# need to improve the Monte Carlo estimation
var(theta)
a/b^2

ind<-theta<5.0 #compare the theta vector to the value 5
ind
mean(ind)

pgamma(q=5.0,shape=a,rate=b)

quantile(theta,probs=0.9)
# 90 percentile of a gamma to one-third is 10.038

qgamma(p=0.9,shape=a,rate=b)