GenFid <- function(my, sig, n, m){
  Fid=matrix(nrow=m, ncol=2)
  
  x=matrix(nrow=m, ncol=n)
  Z=matrix(nrow=m, ncol=n)
  sig_=rep(0, m)
  mu=rep(0,m)
  
for (i in 1:m){
    z=rnorm(n, 0, 1)
    for (j in 1:n) {
      x[i,j]=my+sig*z[j]
      Z[i,j]=z[j]
    }
    Fid[i,1]=mean(x[i,])-sig_[i]*mean(Z[i,])
    
    Fid[i,2]=sd(x[i,])/sd(Z[i,])
}
return(Fid)
}