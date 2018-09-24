GenPalle <- function(my, sig, n, m){
  mu=rep(0,m)
  p=rep(0,100)
  for (j in 1:100){
    teller=0
    Alph=0.01*j
    p_=GenP(my, sig, n, Alph, m)
    p[j]=p_
    }
  return(p)
}
