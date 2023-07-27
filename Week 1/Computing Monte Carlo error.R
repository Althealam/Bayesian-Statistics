# seek the expected value of theta or the mean of this gamma distribution
# we can use the sample mean from our simulated values
set.seed(32)

m=10000
a=2.0
b=1.0/3.0

####(1)
theta=rgamma(n=m,shape=a,rate=b)
# the mean of that normal distribution is the true expected value of theta
# the variance of that normal distribution is the true variance of theta divided by m
# if we increase m by a very large number, the variance of our Monte Carlo estimate gets very small

se=sd(theta)/sqrt(m)
# sd function is the sample standard deviation
se
# this is the standard error of our approximation to the expected value of theta

2.0*se

mean(theta)-2.0*se
mean(theta)+2.0*se
# the true mean of this gamma distribution is between 5.9 and 6.1


####(2)
ind=theta<5
mean(ind)
pgamma(5.0,shape=a,rate=b)

se=sd(ind)/sqrt(m)
se
2*se



#### 1. simulate phi_i from Beta(2,2)
#### 2. simulate y_i from Binom(10,phi_i)

m=1e5

y=numeric(m)

head(y)
phi=numeric(m)

for(i in 1:m){
  phi[i]=rbeta(1,shape1=2.0,shape2=2.0)
  y[i]=rbinom(1,size=10,prob=phi[i])
}

phi=rbeta(m,shape1=2.0,shape2=2.0)
y=rbinom(m,size=10,prob=phi)
table(y)/m
plot(table(y)/m)