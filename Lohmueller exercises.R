#Lohmueller1

getheights<-function(sample)
{
  mean(rnorm(sample, 69,10))
}
meanheights100<-c()
for(ii in 1:1000)
{
  meanheights100[ii]<-getheights(100)
}
meanheights1000<-c()
for(jj in 1:1000)
{
  meanheights1000[jj]<-getheights(1000)
}
breaks <- pretty(range(c(meanheights100,meanheights1000)), n=20)

D1 <- hist(meanheights100, breaks=breaks, plot=FALSE)$counts
D2 <- hist(meanheights1000, breaks=breaks, plot=FALSE)$counts

dat<-rbind(D1,D2)
barplot(dat,col=c(2,4),beside=T,xlab="Average height (inches)",ylab="Count")
legend(6,350,c(expression(paste("n=100")),expression(paste("n=1000"))),col=c(2,4),lwd=4)
