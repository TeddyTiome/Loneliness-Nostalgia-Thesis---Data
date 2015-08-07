e2<-data.frame()
e2<-Code[,12:13] # assign mean scores of 5 coders
E2.combined$emo<-rowMeans(E2.combined[,c(5,7,9,11,13)]) 
E2.combined$soc<-rowMeans(E2.combined[,c(6,8,10,12,14)]) 
#calculate preference means of 5 items
e2[,3:4]<-E2.combined[,23:24]
names(e2)[3:4]<-c("pn","cn") 
#name private and collective nostalgia
attach(e2)

#2D plots
par(mfrow=c(2,2))
plot(CS,cn,xlab="Coded Social Loneliess",ylab="Colletive Nostalgia")
plot(CS,pn,xlab="Coded Social Loneliess",ylab="Private Nostalgia")
plot(CE,cn,xlab="Coded Emotional Loneliess",ylab="Collective Nostalgia")
plot(CE,pn,xlab="Coded Emotional Loneliess",ylab="Private Nostalgia")

#3D plots
library(scatterplot3d)
cnse<-scatterplot3d(CE,CS,cn,highlight.3d=T,pch=20,type="h",ylab="Social Loneliness",xlab="Emotional Loneliness",zlab="Collective Nostalgia ",main="Collective Nostalgia For Different Loneliness")
fitcnse<-lm(cn~CE+CS)
cnse$plane3d(fitcnse)
pnse<-scatterplot3d(CE,CS,pn,highlight.3d=T,pch=18,type="h",ylab="Social Loneliness",xlab="Emotional Loneliness",zlab="Collective Nostalgia",main="Private Nostalgia For Different Loneliness")
fitpnse<-lm(pn~CE+CS)
cnse$plane3d(fitpnse)

#round data plot
e2$rcs<-round(e2$CS)
e2$rce<-round(e2$CE)
rs<-by(e2[,3:4],e2$rcs,colMeans)
rs<-do.call("rbind",rs)
re<-by(e2[,3:4],e2$rce,colMeans)
re<-do.call("rbind",re)

par(mfrow=c(2,1))
plot(row.names(rs),rs[,1],main="Round-Coded Social Loneliness for Nostalgia", ylab = "Private Nostalgia",xlab="Rounded Social Loneliness")
plot(row.names(rs),rs[,2],main="Round-Coded Social Loneliness for Nostalgia",xlab="Rounded Social Loneliness", ylab = "Collective Nostalgia")

plot(row.names(re),re[,1],main="Round-Coded Emotional Loneliness for Nostalgia", ylab = "Private Nostalgia",xlab="Rounded Emotional Loneliness")
plot(row.names(re),re[,2],main="Round-Coded Emotional Loneliness for Nostalgia",xlab="Rounded Emotional Loneliness", ylab = "Collective Nostalgia")

#correlation test
rel<-c(1,2,4,5,6,7,8)
rsl<-c(1,2,3,4,5,6,7,8)
#assign round loneliness scores
cor.test(rel,re[,1])
cor.test(rel,re[,2])
cor.test(rsl,rs[,1])
cor.test(rsl,rs[,2])
#correlation test