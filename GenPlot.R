GenPlot <- function(my, sig, n, m){
  a=1:100
  p=GenPalle(my, sig, n, m)*100
  plot(a, a, col="black")
li=lines(a, p, col="red")
}
