GenMu <- function(my, sig, n, Alph){
  Theta=GenSuff(my, sig, n)
  mu=Theta[1]+qt(Alph,
                 df=n-1, 
                 lower.tail = TRUE, 
                 log.p = FALSE)*Theta[2]/sqrt(n)
  return(mu)
}