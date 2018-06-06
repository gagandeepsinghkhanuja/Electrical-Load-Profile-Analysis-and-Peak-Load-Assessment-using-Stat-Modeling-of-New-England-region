# Industrial Engineering
# Predictive Modeling
# IE - 590
# Gagandeep Singh Khanuja
#install.packages("dplyr")
library(dplyr)
library(data.table)
library(ggplot2)

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part10(Missing Counties and Peak Load)")

#######################################New Vermont Data#######################################
############################# Extracting and merging Addison Data ############################# 
df.parameters.ad <- read.csv("VT.csv",sep =',', header = TRUE)
df.parameters.ad
county.ad<- filter(df.parameters.ad,COUNTY =="Addison")
#county.bp
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.ad$COUNTY))

df.peak.ad <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ad$STATE <- "VT"
df.countyone <- cbind(df.peak.ad)
df.countyone$COUNTY <- "Addison"
#df.countyone

merged.data.ad <- merge(x=df.countyone[,c(1,2,3,4)],y=county.ad[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ad,"VT-Addison.csv",row.names = FALSE)


############################# Extracting and merging Bennington Data ############################# 
df.parameters.bg <- read.csv("VT.csv",sep =',', header = TRUE)
county.bg<- filter(df.parameters.bg,COUNTY == "Bennington")
county.bg

df.peak.bg <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.bg$STATE <- "VT"
df.countytwo <- cbind(df.peak.bg)
df.countytwo$COUNTY <- "Bennington"
df.countytwo

merged.data.bg <- merge(x=df.countytwo[,c(1,2,3,4)],y=county.bg[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.bg,"VT-Bennington.csv",row.names = FALSE)


############################# Extracting and merging Chittenden Data ############################# 
df.parameters.ch <- read.csv("VT.csv",sep =',', header = TRUE)
county.ch<- filter(df.parameters.ch,COUNTY =="Chittenden")
county.ch

df.peak.ch <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ch$STATE <- "VT"
df.countythree <- cbind(df.peak.ch)
df.countythree$COUNTY <- "Chittenden"
df.countythree

merged.data.ch <- merge(x=df.countythree[,c(1,2,3,4)],y=county.ch[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ch,"VT-Chittenden.csv",row.names = FALSE)


############################# Extracting and merging Lamoille Data ############################# 
df.parameters.lo <- read.csv("VT.csv",sep =',', header = TRUE)
county.lo<- filter(df.parameters.lo,COUNTY =="Lamoille")
county.lo

df.peak.lo <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.lo$STATE <- "VT"
df.countyfour <- cbind(df.peak.lo)
df.countyfour$COUNTY <- "Lamoille"
df.countyfour

merged.data.lo <- merge(x=df.countyfour[,c(1,2,3,4)],y=county.lo[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.lo,"VT-Lamoille.csv",row.names = FALSE)


############################# Extracting and merging Orleans Data ############################# 
df.parameters.ol <- read.csv("VT.csv",sep =',', header = TRUE)
county.ol<- filter(df.parameters.ol,COUNTY =="Orleans")
county.ol

df.peak.ol <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ol$STATE <- "VT"
df.countyfive <- cbind(df.peak.ol)
df.countyfive$COUNTY <- "Orleans"
df.countyfive

merged.data.ol <- merge(x=df.countyfive[,c(1,2,3,4)],y=county.ol[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ol,"VT-Orleans.csv",row.names = FALSE)


############################# Extracting and merging Rutland Data ############################# 
df.parameters.rn <- read.csv("VT.csv",sep =',', header = TRUE)
county.rn<- filter(df.parameters.rn,COUNTY =="Rutland")
county.rn

df.peak.rn <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.rn$STATE <- "VT"
df.countysix <- cbind(df.peak.rn)
df.countysix$COUNTY <- "Rutland"
df.countysix

merged.data.rn <- merge(x=df.countysix[,c(1,2,3,4)],y=county.rn[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.rn,"VT-Rutland.csv",row.names = FALSE)


############################# Extracting and merging Washington Data ############################# 
df.parameters.ws <- read.csv("VT.csv",sep =',', header = TRUE)
county.ws<- filter(df.parameters.ws,COUNTY =="Washington")
county.ws

df.peak.ws <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ws$STATE <- "VT"
df.countyseven <- cbind(df.peak.ws)
df.countyseven$COUNTY <- "Washington"
df.countyseven

merged.data.ws <- merge(x=df.countyseven[,c(1,2,3,4)],y=county.ws[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ws,"VT-Washington.csv",row.names = FALSE)


############################# Extracting and merging Windsor Data ############################# 
df.parameters.wd <- read.csv("VT.csv",sep =',', header = TRUE)
county.wd<- filter(df.parameters.wd,COUNTY =="Windsor")
county.wd

df.peak.wd <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.wd$STATE <- "VT"
df.countyeight <- cbind(df.peak.wd)
df.countyeight$COUNTY <- "Windsor"
df.countyeight

merged.data.wd <- merge(x=df.countyeight[,c(1,2,3,4)],y=county.wd[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.wd,"VT-Windsor.csv",row.names = FALSE)


############################# Extracting and merging Franklin Data ############################# 
df.parameters.fk <- read.csv("VT.csv",sep =',', header = TRUE)
county.fk<- filter(df.parameters.fk,COUNTY == "Franklin")
county.fk

df.peak.fk <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.fk$STATE <- "VT"
df.countynine <- cbind(df.peak.fk)
df.countynine$COUNTY <- "Franklin"
df.countynine

merged.data.fk <- merge(x=df.countynine[,c(1,2,3,4)],y=county.fk[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.fk,"VT-Franklin.csv",row.names = FALSE)


############################# Extracting and merging Caledonia Data ############################# 
df.parameters.cl <- read.csv("VT.csv",sep =',', header = TRUE)
county.cl<- filter(df.parameters.cl,COUNTY == "Caledonia")
county.cl

df.peak.cl <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.cl$STATE <- "VT"
df.countyten <- cbind(df.peak.cl)
df.countyten$COUNTY <- "Caledonia"
df.countyten

merged.data.cl <- merge(x=df.countyten[,c(1,2,3,4)],y=county.cl[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.cl,"VT-Caledonia.csv",row.names = FALSE)


############################# Extracting and merging Essex Data ############################# 
df.parameters.ex <- read.csv("VT.csv",sep =',', header = TRUE)
county.ex<- filter(df.parameters.ex,COUNTY == "Essex")
county.ex

df.peak.ex <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ex$STATE <- "VT"
df.countyeleven <- cbind(df.peak.ex)
df.countyeleven$COUNTY <- "Essex"
df.countyeleven

merged.data.ex <- merge(x=df.countyeleven[,c(1,2,3,4)],y=county.ex[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ex,"VT-Essex.csv",row.names = FALSE)


############################# Extracting and merging Grand Isle Data ############################# 
df.parameters.gi <- read.csv("VT.csv",sep =',', header = TRUE)
county.gi<- filter(df.parameters.gi,COUNTY == "Grand Isle")
county.gi

df.peak.gi <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.gi$STATE <- "VT"
df.countyeleven <- cbind(df.peak.gi)
df.countyeleven$COUNTY <- "Grand Isle"
df.countyeleven

merged.data.gi <- merge(x=df.countyeleven[,c(1,2,3,4)],y=county.gi[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.gi,"VT-GrandIsle.csv",row.names = FALSE)


############################# Extracting and merging Orange Data ############################# 
df.parameters.or <- read.csv("VT.csv",sep =',', header = TRUE)
county.or<- filter(df.parameters.or,COUNTY == "Orange")
county.or

df.peak.or <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.or$STATE <- "VT"
df.countytwelve <- cbind(df.peak.or)
df.countytwelve$COUNTY <- "Orange"
df.countytwelve

merged.data.or <- merge(x=df.countytwelve[,c(1,2,3,4)],y=county.or[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.or,"VT-Orange.csv",row.names = FALSE)


############################# Extracting and merging Windham Data ############################# 
df.parameters.wh <- read.csv("VT.csv",sep =',', header = TRUE)
county.wh<- filter(df.parameters.wh,COUNTY == "Windham")
county.wh

df.peak.wh <- read.csv("VT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.wh$STATE <- "VT"
df.countythirteen <- cbind(df.peak.wh)
df.countythirteen$COUNTY <- "Windham"
df.countythirteen

merged.data.wh <- merge(x=df.countythirteen[,c(1,2,3,4)],y=county.wh[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.wh,"VT-Windham.csv",row.names = FALSE)


############################# Merging all the dataframes to one ############################# 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.ad,merged.data.bg,merged.data.ch,merged.data.lo,merged.data.ol,merged.data.rn,merged.data.ws,merged.data.wd,merged.data.cl,merged.data.fk,merged.data.ex,merged.data.gi,merged.data.or,merged.data.wh))
write.csv(df.merge,"VT-Counties-Merged.csv",row.names = FALSE)



