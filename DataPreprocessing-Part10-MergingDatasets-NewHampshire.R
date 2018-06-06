# Industrial Engineering
# Predictive Modeling
# IE - 590
# Gagandeep Singh Khanuja
#install.packages("dplyr")
library(dplyr)
library(data.table)
library(ggplot2)

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part10(Missing Counties and Peak Load)")

#######################################New Hampshire Data#######################################
############################# Extracting and merging Belknap Data ############################# 
df.parameters.bp <- read.csv("NH.csv",sep =',', header = TRUE)
df.parameters.bp
county.bp<- filter(df.parameters.bp,COUNTY =="Belknap")
#county.bp
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.bp$COUNTY))

df.peak.bp <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.bp$STATE <- "NH"
df.countyone <- cbind(df.peak.bp)
df.countyone$COUNTY <- "Belknap"
#df.countyone

merged.data.bp <- merge(x=df.countyone[,c(1,2,3,4)],y=county.bp[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.bp,"NH-Belknap.csv",row.names = FALSE)


############################# Extracting and merging Cheshire Data ############################# 
df.parameters.ce <- read.csv("NH.csv",sep =',', header = TRUE)
county.ce<- filter(df.parameters.ce,COUNTY =="Cheshire")
county.ce

df.peak.ce <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ce$STATE <- "NH"
df.countytwo <- cbind(df.peak.ce)
df.countytwo$COUNTY <- "Cheshire"
df.countytwo

merged.data.ce <- merge(x=df.countytwo[,c(1,2,3,4)],y=county.ce[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ce,"NH-Cheshire.csv",row.names = FALSE)


############################# Extracting and merging Coos Data ############################# 
df.parameters.co <- read.csv("NH.csv",sep =',', header = TRUE)
county.co<- filter(df.parameters.co,COUNTY =="Coos")
county.co

df.peak.co <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.co$STATE <- "NH"
df.countythree <- cbind(df.peak.co)
df.countythree$COUNTY <- "Coos"
df.countythree

merged.data.co <- merge(x=df.countythree[,c(1,2,3,4)],y=county.co[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.co,"NH-Coos.csv",row.names = FALSE)


############################# Extracting and merging Grafton Data ############################# 
df.parameters.gf <- read.csv("NH.csv",sep =',', header = TRUE)
county.gf<- filter(df.parameters.gf,COUNTY =="Grafton")
county.gf

df.peak.gf <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.gf$STATE <- "NH"
df.countyfour <- cbind(df.peak.gf)
df.countyfour$COUNTY <- "Grafton"
df.countyfour

merged.data.gf <- merge(x=df.countyfour[,c(1,2,3,4)],y=county.gf[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.gf,"NH-Grafton.csv",row.names = FALSE)


############################# Extracting and merging Hillsborough Data ############################# 
df.parameters.hb <- read.csv("NH.csv",sep =',', header = TRUE)
county.hb<- filter(df.parameters.hb,COUNTY =="Hillsborough")
county.hb

df.peak.hb <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.hb$STATE <- "NH"
df.countyfive <- cbind(df.peak.hb)
df.countyfive$COUNTY <- "Hillsborough"
df.countyfive

merged.data.hb <- merge(x=df.countyfive[,c(1,2,3,4)],y=county.hb[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.hb,"NH-Hillsborough.csv",row.names = FALSE)


############################# Extracting and merging Merrimack Data ############################# 
df.parameters.mk <- read.csv("NH.csv",sep =',', header = TRUE)
county.mk<- filter(df.parameters.mk,COUNTY =="Merrimack")
county.mk

df.peak.mk <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.mk$STATE <- "NH"
df.countysix <- cbind(df.peak.mk)
df.countysix$COUNTY <- "Merrimack"
df.countysix

merged.data.mk <- merge(x=df.countysix[,c(1,2,3,4)],y=county.mk[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.mk,"NH-Merrimack.csv",row.names = FALSE)


############################# Extracting and merging Strafford Data ############################# 
df.parameters.sf <- read.csv("NH.csv",sep =',', header = TRUE)
county.sf<- filter(df.parameters.sf,COUNTY =="Strafford")
county.sf

df.peak.sf <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.sf$STATE <- "NH"
df.countyseven <- cbind(df.peak.sf)
df.countyseven$COUNTY <- "Strafford"
df.countyseven

merged.data.sf <- merge(x=df.countyseven[,c(1,2,3,4)],y=county.sf[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.sf,"NH-Strafford.csv",row.names = FALSE)


############################# Extracting and merging Rockingham Data ############################# 
df.parameters.rc <- read.csv("NH.csv",sep =',', header = TRUE)
county.rc<- filter(df.parameters.rc,COUNTY =="Rockingham")
county.rc

df.peak.rc <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.rc$STATE <- "NH"
df.countyeight <- cbind(df.peak.rc)
df.countyeight$COUNTY <- "Rockingham"
df.countyeight

merged.data.rc <- merge(x=df.countyeight[,c(1,2,3,4)],y=county.rc[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.rc,"NH-Rockingham.csv",row.names = FALSE)


############################# Extracting and merging Carroll Data ############################# 
df.parameters.cl <- read.csv("NH.csv",sep =',', header = TRUE)
county.cl<- filter(df.parameters.cl,COUNTY =="Carroll")
county.cl

df.peak.cl <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.cl$STATE <- "NH"
df.countynine <- cbind(df.peak.cl)
df.countynine$COUNTY <- "Carroll"
df.countynine

merged.data.cl <- merge(x=df.countynine[,c(1,2,3,4)],y=county.cl[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.cl,"NH-Carroll.csv",row.names = FALSE)


############################# Extracting and merging Sullivan Data ############################# 
df.parameters.sv <- read.csv("NH.csv",sep =',', header = TRUE)
county.sv<- filter(df.parameters.sv,COUNTY =="Sullivan")
county.sv

df.peak.sv <- read.csv("NH-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.sv$STATE <- "NH"
df.countyten <- cbind(df.peak.sv)
df.countyten$COUNTY <- "Sullivan"
df.countyten

merged.data.sv <- merge(x=df.countyten[,c(1,2,3,4)],y=county.sv[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.sv,"NH-Sullivan.csv",row.names = FALSE)


############################# Merging all the dataframes to one ############################# 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.bp,merged.data.ce,merged.data.co,merged.data.gf,merged.data.hb,merged.data.mk,merged.data.sf,merged.data.rc,merged.data.sv,merged.data.cl))
write.csv(df.merge,"NH-Counties-Merged.csv",row.names = FALSE)



