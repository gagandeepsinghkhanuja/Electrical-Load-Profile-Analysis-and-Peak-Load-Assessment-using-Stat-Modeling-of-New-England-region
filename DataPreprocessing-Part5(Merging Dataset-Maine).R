# Industrial Engineering
# Predictive Modeling
# IE - 590
# Gagandeep Singh Khanuja
library(dplyr)
library(data.table)
library(ggplot2)

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 5(Merging Peak Load with other parameters)")

#######################################Maine Data#######################################
############################# Extracting and merging Androscoggin Data ############################# 
df.parameters.ag <- read.csv("ME.csv",sep =',', header = TRUE)
county.ag<- filter(df.parameters.ag,COUNTY =="Androscoggin")
county.ag
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.ag$COUNTY))

df.peak.ag <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ag$STATE <- "ME"
df.countyone <- cbind(df.peak.ag)
df.countyone$COUNTY <- "Androscoggin"
df.countyone

merged.data.ag <- merge(x=df.countyone[,c(1,2,3,4)],y=county.ag[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ag,"ME-Androscoggin.csv",row.names = FALSE)


############################# Extracting and merging Aroostook Data ############################# 
df.parameters.as <- read.csv("ME.csv",sep =',', header = TRUE)
county.as<- filter(df.parameters.as,COUNTY =="Aroostook")
county.as

df.peak.as <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.as$STATE <- "ME"
df.countytwo <- cbind(df.peak.as)
df.countytwo$COUNTY <- "Aroostook"
df.countytwo

merged.data.as <- merge(x=df.countytwo[,c(1,2,3,4)],y=county.as[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.as,"ME-Aroostook.csv",row.names = FALSE)


############################# Extracting and merging Cumberland Data ############################# 
df.parameters.cl <- read.csv("ME.csv",sep =',', header = TRUE)
county.cl<- filter(df.parameters.cl,COUNTY =="Cumberland")
county.cl

df.peak.cl <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.cl$STATE <- "ME"
df.countythree <- cbind(df.peak.cl)
df.countythree$COUNTY <- "Cumberland"
df.countythree

merged.data.cl <- merge(x=df.countythree[,c(1,2,3,4)],y=county.cl[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.cl,"ME-Cumberland.csv",row.names = FALSE)


############################# Extracting and merging Hancock Data ############################# 
df.parameters.hc <- read.csv("ME.csv",sep =',', header = TRUE)
county.hc<- filter(df.parameters.hc,COUNTY =="Hancock")
county.hc

df.peak.hc <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.hc$STATE <- "ME"
df.countyfour <- cbind(df.peak.hc)
df.countyfour$COUNTY <- "Hancock"
df.countyfour

merged.data.hc <- merge(x=df.countyfour[,c(1,2,3,4)],y=county.hc[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.hc,"ME-Hancock.csv",row.names = FALSE)


############################# Extracting and merging Kennebec Data ############################# 
df.parameters.ke <- read.csv("ME.csv",sep =',', header = TRUE)
county.ke<- filter(df.parameters.ke,COUNTY =="Kennebec")
county.ke

df.peak.ke <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ke$STATE <- "ME"
df.countyfive <- cbind(df.peak.ke)
df.countyfive$COUNTY <- "Kennebec"
df.countyfive

merged.data.ke <- merge(x=df.countyfive[,c(1,2,3,4)],y=county.ke[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ke,"ME-Kennebec.csv",row.names = FALSE)


############################# Extracting and merging Knox Data ############################# 
df.parameters.kx <- read.csv("ME.csv",sep =',', header = TRUE)
county.kx<- filter(df.parameters.kx,COUNTY =="Knox")
county.kx

df.peak.kx <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.kx$STATE <- "ME"
df.countysix <- cbind(df.peak.kx)
df.countysix$COUNTY <- "Knox"
df.countysix

merged.data.kx <- merge(x=df.countysix[,c(1,2,3,4)],y=county.kx[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.kx,"ME-Knox.csv",row.names = FALSE)


############################# Extracting and merging Lincoln Data ############################# 
df.parameters.lc <- read.csv("ME.csv",sep =',', header = TRUE)
county.lc<- filter(df.parameters.lc,COUNTY =="Lincoln")
county.lc

df.peak.lc <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.lc$STATE <- "ME"
df.countyseven <- cbind(df.peak.lc)
df.countyseven$COUNTY <- "Lincoln"
df.countyseven

merged.data.lc <- merge(x=df.countyseven[,c(1,2,3,4)],y=county.lc[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.lc,"ME-Lincoln.csv",row.names = FALSE)


############################# Extracting and merging Oxford Data ############################# 
df.parameters.ox <- read.csv("ME.csv",sep =',', header = TRUE)
county.ox<- filter(df.parameters.ox,COUNTY =="Oxford")
county.ox

df.peak.ox <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ox$STATE <- "ME"
df.countyeight <- cbind(df.peak.ox)
df.countyeight$COUNTY <- "Oxford"
df.countyeight

merged.data.ox <- merge(x=df.countyeight[,c(1,2,3,4)],y=county.ox[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ox,"ME-Oxford.csv",row.names = FALSE)



############################# Extracting and merging Penobscot Data ############################# 
df.parameters.pt <- read.csv("ME.csv",sep =',', header = TRUE)
county.pt<- filter(df.parameters.pt,COUNTY =="Penobscot")
county.pt

df.peak.pt <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.pt$STATE <- "ME"
df.countynine <- cbind(df.peak.pt)
df.countynine$COUNTY <- "Penobscot"
df.countynine

merged.data.pt <- merge(x=df.countynine[,c(1,2,3,4)],y=county.pt[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.pt,"ME-Penobscot.csv",row.names = FALSE)


############################# Extracting and merging Piscataquis Data ############################# 
df.parameters.pq <- read.csv("ME.csv",sep =',', header = TRUE)
county.pq<- filter(df.parameters.pq,COUNTY =="Piscataquis")
county.pq

df.peak.pq <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.pq$STATE <- "ME"
df.countyten <- cbind(df.peak.pq)
df.countyten$COUNTY <- "Piscataquis"
df.countyten

merged.data.pq <- merge(x=df.countyten[,c(1,2,3,4)],y=county.pq[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.pq,"ME-Piscataquis.csv",row.names = FALSE)



############################# Extracting and merging York Data ############################# 
df.parameters.yk <- read.csv("ME.csv",sep =',', header = TRUE)
county.yk<- filter(df.parameters.yk,COUNTY =="York")
county.yk

df.peak.yk <- read.csv("ME-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.yk$STATE <- "ME"
df.countyeleven <- cbind(df.peak.yk)
df.countyeleven$COUNTY <- "York"
df.countyeleven

merged.data.yk <- merge(x=df.countyeleven[,c(1,2,3,4)],y=county.yk[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.yk,"ME-York.csv",row.names = FALSE)

############################# Merging all the dataframes to one ############################# 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.ag,merged.data.as,merged.data.cl,merged.data.hc,merged.data.ke,merged.data.kx,merged.data.lc,merged.data.ox,merged.data.pt,merged.data.pq,merged.data.yk))
write.csv(df.merge,"ME-Counties-Merged.csv",row.names = FALSE)






