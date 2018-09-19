GenPalle <- function(my, sig, n, m){
  mu=rep(0,m)
  p=rep(0,100)
  for (j in 1:100){
    teller=0
    for (i in 1:m) {
      Alph=0.01*j
      mu[i]=GenMu(my, sig, n, Alph)
      if (mu[i]>=my){
        teller=teller+1
      }
      p[j]=teller/m
      }
    }
  return(p)
}