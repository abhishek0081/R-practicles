##plot(x, ....) :line graphs for single var
##plot(x,y,......):scatter plot
plot(control$Average.Diameter,xlab='Subgroups',ylab='Sample Mean',main='control chart')

  type arguments within plot(): by default 'p'; others 'l', 'c' ,'o','b'
plot(control$Average.Diameter,type='o',xlab='Subgroups',ylab='Sample Mean',main='control chart')
plot(control$Average.Diameter,type='c',xlab='Subgroups',ylab='Sample Mean',main='control chart')
plot(control$Average.Diameter,type='b',xlab='Subgroups',ylab='Sample Mean',main='control chart')
plot(control$Average.Diameter,type='l',xlab='Subgroups',ylab='Sample Mean',main='control chart')
plot(control$Average.Diameter,type='o',lty=3,lwd=2,pch=4,xlab='Subgroups',ylab='Sample Mean',main='control chart')
plot(control$Average.Diameter,type='o',lty=3,lwd=2,pch=4,xlab="",ylab="")
title(xlab='Subgroups',ylab='Sample Mean',main="control chart")
## multiple line graphs
plot(control$Average.Diameter,type='o',lty=1,lwd=2,pch=14,xlab='Subgroups',ylab='Sample Mean',main='control chart')
lines(control$UCLm,type='l',lty=2,lwd=2)
lines(control$CLm,type='l',lty=3,lwd=2)
lines(control$LCLm,type='l',lty=4,lwd=2)
legend('topleft',legend=c('Mean','UCL','CL','LCL'),lty=c(1:4),bty='n')
plot(control$Average.Diameter,control$SD.,pch=16)