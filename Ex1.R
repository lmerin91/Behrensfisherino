#Eksempelscript #1

GenData(my, sig, n)
#Plukker en sample på n verdier fra normal fordeling med forventningsverdi my og standardavvik sig.

GenSuff(my, sig, n)
#Kjører GenData og så outputter gjennomsnitt og varians til sampelen. 

GenMu(my, sig, n, Alph)
#Kjører GenSuff og finner Alph-quantilen til forventningsverdien fra sampelen fra GenData ved å bruke student-t Alph-quantilen t_Alph.
#Med output mu og S fra GenSuff er formelen for Alph-quantilen mu_Alph= mu + t_Alph*S/sqrt(n)



GenP(my, sig, n, Alph, m)
#Kjører GenMu m antall ganger for så å telle over antall mu'er generert som er større (eller lik) enn den originale my brukt til å generere mu'ene.
#Output gir prosentandel mu>=my.


GenPalle(my, sig, n, m)
#Kjører en loop over GenP og gir dekningsgrad for alle diskrete Alph-quantiler. 
#Generer nye data for hvert Alph-nivå så denne funksjonen gir for øyeblikket ikke noe særlig mening. 

GenPlot(my, sig, n, m)
#Kjører GenPalle og plotter dekningsgrad mot faktisk dekningsgrad:
# Men siden det er nye data for hvert Alph-nivå så gir ikke dette noe særlig mening for øyeblikket.


my=3
sig=2
n=10
Alph=0.95
m=100
#Noen eksempelverdier for å kjøre funksjonene med 