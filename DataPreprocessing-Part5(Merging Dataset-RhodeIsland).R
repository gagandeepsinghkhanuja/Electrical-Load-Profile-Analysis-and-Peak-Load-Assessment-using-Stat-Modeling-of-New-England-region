# Industrial Engineering
# Predictive Modeling
# IE - 590
# Gagandeep Singh Khanuja
#install.packages("dplyr")
library(dplyr)
library(data.table)
library(ggplot2)

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 5(merging Peak Load with other parameters)")

#######################################Rhode Island Data#######################################
############################# Extracting and merging Kent Data ############################# 
df.parameters.kn <- read.csv("RI.csv",sep =',', header = TRUE)
df.parameters.kn
county.kn<- filter(df.parameters.kn,COUNTY =="Kent")
county.kn
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.kn$COUNTY))

df.peak.kn <- read.csv("RI-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.kn$STATE <- "RI"
df.countyone <- cbind(df.peak.kn)
df.countyone$COUNTY <- "Kent"
#df.countyone

merged.data.kn <- merge(x=df.countyone[,c(1,2,3,4)],y=county.kn[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.kn,"RI-Kent.csv",row.names = FALSE)


############################# Extracting and merging Newport Data ############################# 
df.parameters.np <- read.csv("RI.csv",sep =',', header = TRUE)
county.np<- filter(df.parameters.np,COUNTY == "Newport")
county.np

df.peak.np <- read.csv("RI-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.np$STATE <- "RI"
df.countytwo <- cbind(df.peak.np)
df.countytwo$COUNTY <- "Newport"
df.countytwo

merged.data.np <- merge(x=df.countytwo[,c(1,2,3,4)],y=county.np[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.np,"RI-Newport.csv",row.names = FALSE)


############################# Extracting and merging Providence Data ############################# 
df.parameters.pr <- read.csv("RI.csv",sep =',', header = TRUE)
county.pr<- filter(df.parameters.pr,COUNTY =="Providence")
county.pr

df.peak.pr <- read.csv("RI-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.pr$STATE <- "RI"
df.countythree <- cbind(df.peak.pr)
df.countythree$COUNTY <- "Providence"
df.countythree

merged.data.pr <- merge(x=df.countythree[,c(1,2,3,4)],y=county.pr[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.pr,"RI-Providence.csv",row.names = FALSE)


############################# Extracting and merging Washington Data ############################# 
df.parameters.ws <- read.csv("RI.csv",sep =',', header = TRUE)
county.ws<- filter(df.parameters.ws,COUNTY =="Washington")
county.ws

df.peak.ws <- read.csv("RI-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ws$STATE <- "RI"
df.countyfour <- cbind(df.peak.ws)
df.countyfour$COUNTY <- "Washington"
df.countyfour

merged.data.ws <- merge(x=df.countyfour[,c(1,2,3,4)],y=county.ws[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ws,"RI-Washington.csv",row.names = FALSE)




############################# Merging all the dataframes to one ############################# 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.kn,merged.data.np,merged.data.pr,merged.data.ws))
write.csv(df.merge,"RI-Counties-Merged.csv",row.names = FALSE)



