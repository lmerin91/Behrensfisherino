GenTau2 <- function(my, sig, n,  m){
  
Fid = GenFid(my, sig, n, m)
  
mu=0
sig_=0
  
for (i in 1:m) {
    mu=mu+(-1)^(i+1)*Fid[i,1]
    sig_=sig_+Fid[i,2]^2
}

Tau_=c(mu, sqrt(sig_))

return(Tau_)
}