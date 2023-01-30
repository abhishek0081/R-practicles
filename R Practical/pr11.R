practical: 11

Q1) suppose a manufacturing operation produces items in hourly basis with 20%
    defective items per hour.
a) simulate the number of defectives for each hour of a 24-hour period,assuming 
    25 units are being produced per hour.
b)check if the number of defectives ever exceeds 5 from the simulated sample.
   compare this with the theoretical probability that the number of defectives 
   would exceed 5.
c)what is the probability that the number of defectives from the process
  will be atleast 3 and and atmost 7?
d)what is the the 70th and 90th quantiles for number of defectives?

x:binom rv of total no of defectives in 25 trials 
p= 0.2
#part a
x=rbinom(24,25,p)
x
#(b): Number of defectives ever exceeding 5 from the sample polpulation
y=numeric()
for(i in 1:24){
	if(x[i]>5){y[i]=1
	}else{y[i]=0}
}
y
sample.prop=mean(y)

prob.defect.more5=1-pbinom(5,25,p)   #p(x>5)1-p(x<=5)
c(sample.prop,prob.defect.more5)
	
#(c):probability that no of defectives will be at least 3&7 or binomial ditribution
prob.defect.atleast3=1-pbinom(2,25,p)
prob.defect.atmost7=pbinom(7,25,p)
c(prob.defect.atleast3,prob.defect.atmost7)

quantile.prob70=qbinom(0.70,25,p)
quantile.prob90=qbinom(0.90,25,p)
c(quantile.prob70,quantile.prob90)