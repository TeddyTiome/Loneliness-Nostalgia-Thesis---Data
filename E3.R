indepname<-c("social","emotional","control")
depname<-c("private","collective")

#assign idependent variables'name 
pn <- e3[,1]
cn <- e3[,2]
prefer <- c(pn,cn)
lt <- gl(3,1,15*3*2, labels=indepname )
nt <- gl(2,45,2*3*15, labels=depname )
#assign the two layers with factors 
anova( lm(prefer ~ lt*nt) )
#anova test

priv<-c(35.76,36.72,32)
coll<-c(33.64,31.2,29.08)
#average statistics
plot(priv,main="Nostalgia Preference For Groups",sub="Private Nostalgia: circle; Collective Nostalgia: rectangle",xlab="1=Social 2=Emotional 3=Control",ylab="Nostalgia Preference",xlim=c(1,3),ylim=c(28,37))
points(coll,pch=0)
lines(priv)
lines(coll)