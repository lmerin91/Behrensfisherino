GenFidPlot <- function(my, sig, n, m){

Tau=GenTau2(my, sig, n, m)
x=rnorm(1000, mean=Tau[1], sd=Tau[2])

h=(4*Tau[2]^5/(3*n))^(1/5)

hist(x, freq=FALSE)
curve(dnorm(x, mean=Tau[1], sd=Tau[2]), add=TRUE)
z=density(x, bw=h)
lines(z)

surf3D(x, y=3.2*Tau[2], z=z, kernel="epanechnikov")
}