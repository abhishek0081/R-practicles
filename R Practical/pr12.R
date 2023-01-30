#Q(a): SIMULATION of marks of 100 students for a 20-question True/False test.
#Step1:Generate an Uniform(0,1) rs which would contain values in decimals. 
#100 samples would be created corresponding to each student. 
#Each sample is of size 20 w.r.t. answers to 20 True/False questions.
#So, these simulated values are the probability of correct answer. 

U = matrix(data=NA,100, 20)
for(i in 1:100){
U[i, ]=runif(20)
}

#Step2: Recode U to B = 1 (if U>=0.5) or B = 0 (if U<0.5). 
#As prob increases from 0.5, answers are close to being correct. 
# Hence B = 1(marks for correct answer)/ 0(Wrong). So, rv B~Bernoulli(0.5).

B = matrix(data=NA,100, 20)
for(i in 1:100)
{
for(j in 1:20)
{
		if(U[i,j]>=0.5){B[i,j]=1
		}else{B[i,j]=0}
}
}

#Q(b):Estimate probability of success and variance of rv B ~ Bernoulli(0.5).
prob.success.est=sum(rowMeans(B))/100
var.est=prob.success.est*(1-prob.success.est)
cbind(prob.success.est, var.est)
cbind(prob.success=0.5, var.popl=0.5*0.5)

#Q(c): rv ‘marks’ represents total marks or total correct answers.
# marks follows Binomial(n=20, p=0.5) distribution.
marks=rowSums(B) 
marks
avg.marks=20*prob.success.est
var.marks=20*prob.success.est*(1-prob.success.est)
cbind(Average_Marks=avg.marks, Variance=var.marks, SD=sqrt(var.marks))
cbind(Population_Mean=20*0.5, Variance=20*0.25, SD=sqrt(20*0.25))


#Q(d):Estimate the proportion of students getting 70% or higher marks.
#To get >=70% marks, a student has to answer atleast 14 question correctly.
G=character()
for(i in 1:100){
if(marks[i]>=14){
G[i]=1
}else{
G[i]=0}
}
G
table(G)
prop.more70.est=(table(G)[2])/100
prob.more70=1-pbinom(13, 20, 0.5)
cbind(prop.more70.est, prob.more70)

CALCULATIONS:





