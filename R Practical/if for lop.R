#if{}, for{}, while{}
# if{} loop is a conditional execution of command
#for(i in 1:n) {r -commands}
#if loop 
#compute median using for formula
x=c(10,20,30,40,50,60,70,67,217,32)
median(x)
n = length(x)
z=sort(x)
j=n/2
if(n%%2==0){
    md=(z[j]+z[j+1])/2
    }else{
    md=z[(j+0.5)]
    }
md
    

#recode into groups
gr = numeric()
for(i in 1:n){
    if(x[i]<=70)
        {gr[i]=2
     }else{gr[i]=1}
}
gr
factor(gr)

#to compute mean,variance and sd

sxx=0
sx=0
for(i in 1:n)
{
    sx=sx+x[i]
    sxx=sxx+(x[i]^2)
}
MeanX=sx/n
VarX=(sxx/n)-(MeanX^2)
sdX=sqrt(VarX)
c(MeanX ,VarX, sdX)
 

