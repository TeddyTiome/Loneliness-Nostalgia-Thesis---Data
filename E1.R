E1.combined$ESL<-E1.combined$ES.E+E1.combined$ES.S
E1.combined$DJL<-E1.combined$DJ.E+E1.combined$DJ.S
E1.combined$PN<-E1.combined$P.PN+E1.combined$B.PN
E1.combined$CN<-E1.combined$P.CN+E1.combined$B.CN
e1<-data.frame()
e1<-E1.combined[,54:57]
e1[,5]<-E1.combined[,45]   #UCLA loneliness scores
names(e1)[5]<-"UCLA"  #change column name

cmesl<-by(e1[,3:4],e1[,1],colMeans)  #means according to ESL scores
cmesl<-do.call("rbind",cmesl)
cmdjl<-by(e1[,3:4],e1[,2],colMeans)  #means according to DJL scores
cmdjl<-do.call("rbind",cmdjl)
cmucla<-by(e1[,3:4],e1[,5],colMeans)  #means according to UCLA scores
cmucla<-do.call("rbind",cmucla)

par(mfrow=c(3,1))
plot(row.names(cmesl),cmesl[,1],main="Nostalgia Preference on Emotioanl-Social Loneliness Scale", sub="Private Nostalgia: circle; Collective Nostalgia: rectangle",xlab="Loneliness Scale", ylab = "Preference Scores")
points(row.names(cmesl),cmesl[,2],pch=0)
plot(row.names(cmdjl),cmdjl[,1],main="Nostalgia Preference on De Jong Gierveld Loneliness Scale", sub="Private Nostalgia: circle; Collective Nostalgia: rectangle",xlab="Loneliness Scale", ylab = "Preference Scores")
points(row.names(cmdjl),cmdjl[,2],pch=0)
plot(row.names(cmucla),cmucla[,1],main="Nostalgia Preference on UCLA Loneliness Scale", sub="Private Nostalgia: circle; Collective Nostalgia: rectangle",xlab="Loneliness Scale", ylab = "Preference Scores")
points(row.names(cmucla),cmucla[,2],pch=0)