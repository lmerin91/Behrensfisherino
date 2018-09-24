GenFidPlot <- function(my, sig, n, m, N){

Tau=GenTau2(my, sig, n, m)
x=rnorm(N, mean=Tau[1], sd=Tau[2])

h=(4*Tau[2]^5/(3*n))^(1/5)

hist(x, freq = FALSE)
curve(dnorm(x, mean=Tau[1], sd=Tau[2]), add=TRUE)
z=density(x, bw=h)
lines(z, col="red")

}

