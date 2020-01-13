# You have been supplied data for two more additional in-game statistics:
#  • Free Throws
#  • Free Throw Attempts
# You need to create three plots that portray the following insights:
#  • Free Throw Attempts per game
#  • Accuracy of Free Throws
#  • Player playing style (2 vs 3 points preference) excluding Free Throws*
#  *Each Free Throw is worth 1 point
#The data has been supplied in the form of vectors. You will have to create the two
#matrices before you proceed with the analysis


#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Games 
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)
#Matrix
Games <- rbind(KobeBryant_G, JoeJohnson_G, LeBronJames_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, ChrisPaul_G, KevinDurant_G, DerrickRose_G, DwayneWade_G)
rm(KobeBryant_G, JoeJohnson_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, LeBronJames_G, ChrisPaul_G, DerrickRose_G, DwayneWade_G, KevinDurant_G)
colnames(Games) <- Seasons
rownames(Games) <- Players

#Free Throws
KobeBryant_FT <- c(696,667,623,483,439,483,381,525,18,196)
JoeJohnson_FT <- c(261,235,316,299,220,195,158,132,159,141)
LeBronJames_FT <- c(601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_FT <- c(573,459,464,371,508,507,295,425,459,189)
DwightHoward_FT <- c(356,390,529,504,483,546,281,355,349,143)
ChrisBosh_FT <- c(474,463,472,504,470,384,229,241,223,179)
ChrisPaul_FT <- c(394,292,332,455,161,337,260,286,295,289)
KevinDurant_FT <- c(209,209,391,452,756,594,431,679,703,146)
DerrickRose_FT <- c(146,146,146,197,259,476,194,0,27,152)
DwayneWade_FT <- c(629,432,354,590,534,494,235,308,189,284)
#Matrix
FreeThrows <- rbind(KobeBryant_FT,JoeJohnson_FT,LeBronJames_FT,CarmeloAnthony_FT,DwightHoward_FT,ChrisBosh_FT,ChrisPaul_FT,KevinDurant_FT,DerrickRose_FT,DwayneWade_FT)
rm(KobeBryant_FT,JoeJohnson_FT,LeBronJames_FT,CarmeloAnthony_FT,DwightHoward_FT,ChrisBosh_FT,ChrisPaul_FT,KevinDurant_FT,DerrickRose_FT,DwayneWade_FT)
colnames(FreeThrows) <- Seasons
rownames(FreeThrows) <- Players
#

#Free Throw Attempts
KobeBryant_FTA <- c(819,768,742,564,541,583,451,626,21,241)
JoeJohnson_FTA <- c(330,314,379,362,269,243,186,161,195,176)
LeBronJames_FTA <- c(814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_FTA <- c(709,568,590,468,612,605,367,512,541,237)
DwightHoward_FTA <- c(598,666,897,849,816,916,572,721,638,271)
ChrisBosh_FTA <- c(581,590,559,617,590,471,279,302,272,232)
ChrisPaul_FTA <- c(465,357,390,524,190,384,302,323,345,321)
KevinDurant_FTA <- c(256,256,448,524,840,675,501,750,805,171)
DerrickRose_FTA <- c(205,205,205,250,338,555,239,0,32,187)
DwayneWade_FTA <- c(803,535,467,771,702,652,297,425,258,370)
#Matrix
FreeThrowAttempts <- rbind(KobeBryant_FTA,JoeJohnson_FTA,LeBronJames_FTA,CarmeloAnthony_FTA,DwightHoward_FTA,ChrisBosh_FTA,ChrisPaul_FTA,KevinDurant_FTA,DerrickRose_FTA,DwayneWade_FTA)
rm(KobeBryant_FTA,JoeJohnson_FTA,LeBronJames_FTA,CarmeloAnthony_FTA,DwightHoward_FTA,ChrisBosh_FTA,ChrisPaul_FTA,KevinDurant_FTA,DerrickRose_FTA,DwayneWade_FTA)
colnames(FreeThrowAttempts) <- Seasons
rownames(FreeThrowAttempts) <- Players
FreeThrowAttempts
#


myplot <- function(data,who=1:10){
  Data <- data[who,,drop=F]
  matplot(t(Data),type='b',pch = 15:18, col=c(1:4,6), main='Basketball Player Analysis')
  legend('bottomleft',inset=0.01,legend=Players[who],col=c(1:4,6),pch=15:18,horiz=F)
}

myplot(FreeThrows)
myplot(FreeThrowAttempts)

#1. Free Throw Attempts per Game
myplot(FreeThrowAttempts / Games)

#2. Free Throw Accuracy
myplot(FreeThrows / FreeThrowAttempts)

#2a. Field Goal Accuracy
myplot(FieldGoals / FreeThrowAttempts)

#3. Player Style Pattern Excl. Free Throws
myplot((Points - FreeThrows) / FieldGoals) 




