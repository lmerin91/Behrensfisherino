GenSuff <-function(my, sig, n){
  x=GenData(my, sig, n)
  x_=mean(x)
  S=sd(x)
  Theta=c(x_, S)
  return(Theta)
}