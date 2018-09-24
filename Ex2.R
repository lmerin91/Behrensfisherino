#eksempelscript 2

GenFid(my, sig, n, m)
#Trekker m antall sampler på n verdier fra en standard normalfordeling.
#Bruker gitt my og sig som middelverdi og varians for samplene ved X_i=my+sig*z_i
#Kalkulerer empirisk gjennosnitt = Xstrek og varians for hver sample.
#Uttrykker fiduset sin varians ved S_x/S_z og middelverdi ved Xstrek - S_x/S_z
# Outputter fidusene sin middelverdier og varians for hver sample.

GenTau2(my, sig, n,  m)
#Kjører GenFid for å genere mu'er og tilhørende varians
#Outputer Tau som er en lineærkombinasjon av mu'ene fra Genfid samt, den samlede variansen til muene

GenFidPlot(my, sig, n, m, N)
#Kjører GenTau2 og plukker N verdier fra fordelinga til Tau2 og plotter det i et histogram.
# En sort linje viser kontinuerlig sannsynlighetsfordeling.
# En rød linje viser Kernel Density estimat med bandwidth gitt ved 4*Sigma^5/(3*n))^(1/5) hvor Sigma er variansen til Tau2.

#Bilde vist har disse verdiene 
my= 2
sig=4
n=10
m=2
N=10000
