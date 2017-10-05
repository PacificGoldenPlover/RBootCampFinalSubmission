ricker<-function(r, n1, k)
{
  nt <-n1
  dat<-c(nt)
  for(ii in 2:50)
  {
    nt<-nt*exp(1)^(r*(1-(nt/k)))
    dat[ii]<-nt
  }
plot(1:50,dat)
}
ricker(1.01,100,300)
#pop decreases to 0: ricker(2,100,300)
#pop approaches k, no oscillations: ricker(1.01,1,300)
#decaying oscillations: ricker(1.8,1,300)
#pop crazy oscillations: ricker(3,2,300)
#persistent regular oscillations: ricker(2.2,20,300)
#r is main driver
partd <-function(r)
{
  count <-1
  nt <-20
  while (nt<=500)
  {
    nt<-nt*exp(1)^(r*(1-(nt/1000)))
    count<-count+1
  }
  print(count)
}
#parte
tk2 <-c()
count<-1
for(ii in seq(.1,.9,.05))
{
  tk2[count]<-partd(ii)
  count<-count+1
}
plot(seq(.1,.9,.05), tk2)
valatten<-function(r,n1,k)
{
  nt<-n1
  dat<-c(nt)
  for(ii in 2:10)
  {
    nt<-nt*exp(1)^(r*(1-(nt/k)))
    dat[ii]<-nt
  }
  return( dat[10])
  
}
mat<-matrix(0,15, 20)
partg<-function(NA)
{
  countr<-1
  countk<-1
  for(ii in seq(.1,1.5,.1))
  {
    for(jj in seq(100,480,20))
    {
      mat[countr,countk]<-valatten(ii, 20,jj)
      countk<-countk+1
    }
    countk<-1
    countr<-countr+1
  }
}
install.packages("plotly")
p <- plot_ly(z = ~mat) 
plot_ly(mat)
persp(mat)
