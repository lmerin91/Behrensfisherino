GenP <- function(my, sig, n, Alph, m){
  my=3
  sig=2
  n=10
  Alph=0.95
  m=100
  
  teller=0
  mu=rep(0,m)
  for (i in 1:m) {
    mu[i]=GenMu(my, sig, n, Alph)
    if (mu[i]>=my){
      teller=teller+1
      
    }
  }
  p=teller/m
  p
  mu
  return(p)
}