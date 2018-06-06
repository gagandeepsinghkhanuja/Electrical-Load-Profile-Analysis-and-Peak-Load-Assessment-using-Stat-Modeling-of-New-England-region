# Industrial Engineering
# Predictive Modeling
# IE - 590
# Gagandeep Singh Khanuja
#install.packages("dplyr")
library(dplyr)
library(data.table)
library(ggplot2)

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part10(Missing Counties and Peak Load)")

#######################################Connecticut Data#######################################
############################# Extracting and merging Middlesex Data ############################# 
df.parameters.mx <- read.csv("CT.csv",sep =',', header = TRUE)
county.mx<- filter(df.parameters.mx,COUNTY =="Middlesex")
county.mx
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.mx$COUNTY))

df.peak.ck <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ck$STATE <- "CT"
df.countyone <- cbind(df.peak.ck)
df.countyone$COUNTY <- "Middlesex"
df.countyone



merged.data.mx <- merge(x=df.countyone[,c(1,2,3,4)],y=county.mx[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.mx,"CT-Middlesex.csv",row.names = FALSE)


############################# Extracting and merging New Haven Data ############################# 
df.parameters.nh <- read.csv("CT.csv",sep =',', header = TRUE)
county.nh<- filter(df.parameters.nh,COUNTY =="New Haven")
county.nh

df.peak.nh <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.nh$STATE <- "CT"
df.countytwo <- cbind(df.peak.nh)
df.countytwo$COUNTY <- "New Haven"
df.countytwo

merged.data.nh <- merge(x=df.countytwo[,c(1,2,3,4)],y=county.nh[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.nh,"CT-NewHaven.csv",row.names = FALSE)


############################# Extracting and merging New London Data ############################# 
df.parameters.nl <- read.csv("CT.csv",sep =',', header = TRUE)
county.nl<- filter(df.parameters.nl,COUNTY =="New London")
county.nl

df.peak.nl <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.nl$STATE <- "CT"
df.countythree <- cbind(df.peak.nl)
df.countythree$COUNTY <- "New London"
df.countythree

merged.data.nl <- merge(x=df.countythree[,c(1,2,3,4)],y=county.nl[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.nl,"CT-NewLondon.csv",row.names = FALSE)


############################# Extracting and merging Windham Data ############################# 
df.parameters.wd <- read.csv("CT.csv",sep =',', header = TRUE)
county.wd<- filter(df.parameters.wd,COUNTY =="Windham")
county.wd

df.peak.wd <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.wd$STATE <- "CT"
df.countyfour <- cbind(df.peak.wd)
df.countyfour$COUNTY <- "Windham"
df.countyfour

merged.data.wd <- merge(x=df.countyfour[,c(1,2,3,4)],y=county.wd[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.wd,"CT-Windham.csv",row.names = FALSE)


############################# Extracting and merging Fairfield Data ############################# 
df.parameters.fl <- read.csv("CT.csv",sep =',', header = TRUE)
county.fl<- filter(df.parameters.fl,COUNTY =="Fairfield")
county.fl

df.peak.fl <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.fl$STATE <- "CT"
df.countyfive <- cbind(df.peak.fl)
df.countyfive$COUNTY <- "Fairfield"
df.countyfive

merged.data.fl <- merge(x=df.countyfive[,c(1,2,3,4)],y=county.fl[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.fl,"CT-Fairfield.csv",row.names = FALSE)


############################# Extracting and merging Hartford Data ############################# 
df.parameters.hf <- read.csv("CT.csv",sep =',', header = TRUE)
county.hf<- filter(df.parameters.hf,COUNTY =="Hartford")
county.hf

df.peak.hf <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.hf$STATE <- "CT"
df.countysix <- cbind(df.peak.hf)
df.countysix$COUNTY <- "Hartford"
df.countysix

merged.data.hf <- merge(x=df.countysix[,c(1,2,3,4)],y=county.hf[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.hf,"CT-Hartford.csv",row.names = FALSE)


############################# Extracting and merging Litchfield Data ############################# 
df.parameters.lf <- read.csv("CT.csv",sep =',', header = TRUE)
county.lf<- filter(df.parameters.lf,COUNTY =="Litchfield")
county.lf
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.lf$COUNTY))

df.peak.lf <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.lf$STATE <- "CT"
df.countyseven <- cbind(df.peak.lf)
df.countyseven$COUNTY <- "Litchfield"
df.countyseven

merged.data.lf <- merge(x=df.countyseven[,c(1,2,3,4)],y=county.lf[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.lf,"CT-Litchfield.csv",row.names = FALSE)


############################# Extracting and merging Tolland Data ############################# 
df.parameters.td <- read.csv("CT.csv",sep =',', header = TRUE)
county.td<- filter(df.parameters.td,COUNTY =="Tolland")
county.td
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.td$COUNTY))

df.peak.td <- read.csv("CT-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.td$STATE <- "CT"
df.countyeight <- cbind(df.peak.td)
df.countyeight$COUNTY <- "Tolland"
df.countyeight

merged.data.td <- merge(x=df.countyeight[,c(1,2,3,4)],y=county.td[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.td,"CT-Tolland.csv",row.names = FALSE)



############################# Merging all the dataframes to one ############################# 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.mx,merged.data.nh,merged.data.nl,merged.data.wd,merged.data.fl,merged.data.hf,merged.data.lf,merged.data.td))
write.csv(df.merge,"CT-Counties-Merged.csv",row.names = FALSE)








