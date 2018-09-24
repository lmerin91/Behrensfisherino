GenP <- function(my, sig, n, Alph, m){
  
  teller=0
  mu=rep(0,m)
  for (i in 1:m) {
    mu[i]=GenMu(my, sig, n, Alph)
    if (mu[i]>=my){
      teller=teller+1
      
    }
  }
  p=teller/m
  return(p)
}
