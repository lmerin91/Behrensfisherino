GenTau <- function(my, sig, n,  Alph, k){
  Tau=0
  sigma_=0
  for (i in 1:k){
  Theta=GenSuff(my, sig, n)
  mu=Theta[1]+qt(Alph,
                 df=n-1, 
                 lower.tail = TRUE, 
                 log.p = FALSE)*Theta[2]/sqrt(n)
  Tau=Tau+mu
  sigmasqrd=sigmasqrd+Theta[2]^2
  }
  
  Tau_=c(Tau, sigmasqrd)
  
  return(Tau_)
}