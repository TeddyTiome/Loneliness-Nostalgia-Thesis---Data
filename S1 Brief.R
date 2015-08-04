Means
ALL PPN   PCN      BPN       BCN
[1] 15.744 [2] 15 [3] 14.624 [4] 13.92
Lonely
[1] 16.35294 [2] 15.82353 [3] 14.76471 [4] 15.05882
Slight Lonely
[1] 14.70588 [2] 14.11765 [3] 13.61765 [4] 12.70588
Hardly Lonely
[1] 15.975 [2] 15.4 [3] 14.525 [4] 13.725
Not Lonely
[1] 16.20588 [2] 15 [3] 15.67647 [4] 14.79412

cor(sf$ES,sf$UCLA);cor(sf$DJ,sf$UCLA);cor(sf$ES,sf$DJ);cor(sf$ES.E,sf$DJ.E);cor(sf$ES.S,sf$DJ.S);cor(sf$ES.E.ES.S,sf$DJ.E.DJ.S)

cor(sfl$ES,sfl$DJ);cor(sfl$ES.E,sfl$DJ.E);cor(sfl$ES.S,sfl$DJ.S);cor(sfl$ES.E.ES.S,sfl$DJ.E.DJ.S)
cor(sfsl$ES,sfsl$DJ);cor(sfsl$ES.E,sfsl$DJ.E);cor(sfsl$ES.S,sfsl$DJ.S);cor(sfsl$ES.E.ES.S,sfsl$DJ.E.DJ.S)
cor(sfhl$ES,sfhl$DJ);cor(sfhl$ES.E,sfhl$DJ.E);cor(sfhl$ES.S,sfhl$DJ.S);cor(sfhl$ES.E.ES.S,sfhl$DJ.E.DJ.S)
cor(sfnl$ES,sfnl$DJ);cor(sfnl$ES.E,sfnl$DJ.E);cor(sfnl$ES.S,sfnl$DJ.S);cor(sfnl$ES.E.ES.S,sfnl$DJ.E.DJ.S)

cor(sfhl$ESes,sfhl$PPCs);cor(sfhl$DJes,sfhl$PPCs);cor(sfhl$ESes,sfhl$BPCs);cor(sfhl$DJes,sfhl$BPCs)
cor(sfnl$ESes,sfnl$PPCs);cor(sfnl$DJes,sfnl$PPCs);cor(sfnl$ESes,sfnl$BPCs);cor(sfnl$DJes,sfnl$BPCs)
cor(sfl$ESes,sfl$PPCs);cor(sfl$DJes,sfl$PPCs);cor(sfl$ESes,sfl$BPCs);cor(sfl$DJes,sfl$BPCs)
cor(sfsl$ESes,sfsl$PPCs);cor(sfsl$DJes,sfsl$PPCs);cor(sfsl$ESes,sfsl$BPCs);cor(sfsl$DJes,sfsl$BPCs)

sfse<-((sf$ESs * sf$DJs) > 0,)

cor(sfse$ESes,sfse$PPCs);cor(sfse$DJes,sfse$PPCs);cor(sfse$ESes,sfse$BPCs);cor(sfse$DJes,sfse$BPCs)
