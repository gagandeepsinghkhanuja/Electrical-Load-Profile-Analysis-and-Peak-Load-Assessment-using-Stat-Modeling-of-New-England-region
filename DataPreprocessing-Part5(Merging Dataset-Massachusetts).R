# Industrial Engineering
# Predictive Modeling
# IE - 590
# Gagandeep Singh Khanuja
library(dplyr)
library(data.table)
library(ggplot2)

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 5(Merging Peak Load with other parameters)")

#######################################Massachusetts Data#######################################

#################################### SEMASS Dataset ####################################  
############################# Extracting and merging Bristol Data ############################# 
df.parameters.br <- read.csv("MA.csv",sep =',', header = TRUE)
county.br<- filter(df.parameters.br,COUNTY =="Bristol")
county.br
# Find the unique names in the list of counties you have got. 
as.character(unique(df.parameters.br$COUNTY))

df.peak.br <- read.csv("SEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.br$STATE <- "MA"
df.countyone <- cbind(df.peak.br)
df.countyone$COUNTY <- "Bristol"
df.countyone

merged.data.br <- merge(x=df.countyone[,c(1,2,3,4)],y=county.br[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.br,"MA-SEMASS-Bristol.csv",row.names = FALSE)


############################# Extracting and merging Plymouth Data ############################# 
df.parameters.py <- read.csv("MA.csv",sep =',', header = TRUE)
county.py<- filter(df.parameters.py,COUNTY =="Plymouth")
county.py

df.peak.py <- read.csv("SEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.py$STATE <- "MA"
df.countytwo <- cbind(df.peak.py)
df.countytwo$COUNTY <- "Plymouth"
df.countytwo

merged.data.py <- merge(x=df.countytwo[,c(1,2,3,4)],y=county.py[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.py,"MA-SEMASS-Plymouth.csv",row.names = FALSE)


############################# Extracting and merging Barnstable Data ############################# 
df.parameters.bs <- read.csv("MA.csv",sep =',', header = TRUE)
county.bs<- filter(df.parameters.bs,COUNTY =="Barnstable")
county.bs

df.peak.bs <- read.csv("SEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.bs$STATE <- "MA"
df.countythree <- cbind(df.peak.bs)
df.countythree$COUNTY <- "Barnstable"
df.countythree

merged.data.bs <- merge(x=df.countythree[,c(1,2,3,4)],y=county.bs[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.bs,"MA-SEMASS-Barnstable.csv",row.names = FALSE)


############################# Extracting and merging Dukes Data ############################# 
df.parameters.dk <- read.csv("MA.csv",sep =',', header = TRUE)
county.dk<- filter(df.parameters.dk,COUNTY =="Dukes")
county.dk

df.peak.dk <- read.csv("SEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.dk$STATE <- "MA"
df.countyfour <- cbind(df.peak.dk)
df.countyfour$COUNTY <- "Dukes"
df.countyfour

merged.data.dk <- merge(x=df.countyfour[,c(1,2,3,4)],y=county.dk[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.dk,"MA-SEMASS-Dukes.csv",row.names = FALSE)


############################# Extracting and merging Nantucket Data ############################# 
df.parameters.nk <- read.csv("MA.csv",sep =',', header = TRUE)
county.nk<- filter(df.parameters.nk,COUNTY =="Nantucket")
county.nk

df.peak.nk <- read.csv("SEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.nk$STATE <- "MA"
df.countyfive <- cbind(df.peak.nk)
df.countyfive$COUNTY <- "Nantucket"
df.countyfive

merged.data.nk <- merge(x=df.countyfive[,c(1,2,3,4)],y=county.nk[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.nk,"MA-SEMASS-Nantucket.csv",row.names = FALSE)




#################################### NEMASS Dataset ####################################  

############################# Extracting and merging Essex Data ############################# 
df.parameters.ex <- read.csv("MA.csv",sep =',', header = TRUE)
county.ex<- filter(df.parameters.ex,COUNTY =="Essex")
county.ex

df.peak.ex <- read.csv("NEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.ex$STATE <- "MA"
df.countysix <- cbind(df.peak.ex)
df.countysix$COUNTY <- "Essex"
df.countysix

merged.data.ex <- merge(x=df.countysix[,c(1,2,3,4)],y=county.ex[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.ex,"MA-NEMASS-Essex.csv",row.names = FALSE)


############################# Extracting and merging Middlesex Data ############################# 
df.parameters.mx <- read.csv("MA.csv",sep =',', header = TRUE)
county.mx<- filter(df.parameters.mx,COUNTY =="Middlesex")
county.mx

df.peak.mx <- read.csv("NEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.mx$STATE <- "MA"
df.countyseven <- cbind(df.peak.mx)
df.countyseven$COUNTY <- "Middlesex"
df.countyseven

merged.data.mx <- merge(x=df.countyseven[,c(1,2,3,4)],y=county.mx[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.mx,"MA-NEMASS-Middlesex.csv",row.names = FALSE)


############################# Extracting and merging Suffolk Data ############################# 
df.parameters.sf <- read.csv("MA.csv",sep =',', header = TRUE)
county.sf<- filter(df.parameters.sf,COUNTY =="Suffolk")
county.sf

df.peak.sf <- read.csv("NEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.sf$STATE <- "MA"
df.countyeight <- cbind(df.peak.sf)
df.countyeight$COUNTY <- "Suffolk"
df.countyeight

merged.data.sf <- merge(x=df.countyeight[,c(1,2,3,4)],y=county.sf[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.sf,"MA-NEMASS-Suffolk.csv",row.names = FALSE)



############################# Extracting and merging Norfolk Data ############################# 
df.parameters.nk <- read.csv("MA.csv",sep =',', header = TRUE)
county.nk<- filter(df.parameters.nk,COUNTY =="Norfolk")
county.nk

df.peak.nk <- read.csv("NEMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.nk$STATE <- "MA"
df.countynine <- cbind(df.peak.nk)
df.countynine$COUNTY <- "Norfolk"
df.countynine

merged.data.nk <- merge(x=df.countynine[,c(1,2,3,4)],y=county.nk[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.nk,"MA-NEMASS-Norfolk.csv",row.names = FALSE)



#################################### WCMASS Dataset ####################################  

############################# Extracting and merging Berkshire Data ############################# 
df.parameters.bk <- read.csv("MA.csv",sep =',', header = TRUE)
county.bk<- filter(df.parameters.bk,COUNTY =="Berkshire")
county.bk

df.peak.bk <- read.csv("WCMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.bk$STATE <- "MA"
df.countyten <- cbind(df.peak.bk)
df.countyten$COUNTY <- "Berkshire"
df.countyten

merged.data.bk <- merge(x=df.countyten[,c(1,2,3,4)],y=county.bk[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.bk,"MA-WCMASS-Berkshire.csv",row.names = FALSE)



############################# Extracting and merging Franklin Data ############################# 
df.parameters.fi <- read.csv("MA.csv",sep =',', header = TRUE)
county.fi<- filter(df.parameters.fi,COUNTY =="Franklin")
county.fi

df.peak.fi <- read.csv("WCMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.fi$STATE <- "MA"
df.countyeleven <- cbind(df.peak.fi)
df.countyeleven$COUNTY <- "Franklin"
df.countyeleven

merged.data.fi <- merge(x=df.countyeleven[,c(1,2,3,4)],y=county.fi[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.fi,"MA-WCMASS-Franklin.csv",row.names = FALSE)



############################# Extracting and merging Hampden Data ############################# 
df.parameters.hp <- read.csv("MA.csv",sep =',', header = TRUE)
county.hp<- filter(df.parameters.hp,COUNTY =="Hampden")
county.hp

df.peak.hp <- read.csv("WCMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.hp$STATE <- "MA"
df.countytwelve <- cbind(df.peak.hp)
df.countytwelve$COUNTY <- "Hampden"
df.countytwelve

merged.data.hp <- merge(x=df.countytwelve[,c(1,2,3,4)],y=county.hp[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.hp,"MA-WCMASS-Hampden.csv",row.names = FALSE)


############################# Extracting and merging Worcester Data ############################# 
df.parameters.wc <- read.csv("MA.csv",sep =',', header = TRUE)
county.wc<- filter(df.parameters.wc,COUNTY =="Worcester")
county.wc

df.peak.wc <- read.csv("WCMASS-Peak-Demand.csv",sep =',', header = TRUE)
df.peak.wc$STATE <- "MA"
df.countythirteen <- cbind(df.peak.wc)
df.countythirteen$COUNTY <- "Worcester"
df.countythirteen

merged.data.wc <- merge(x=df.countythirteen[,c(1,2,3,4)],y=county.wc[,c(5:23)],by.x="Date",by.y="DATE")
write.csv(merged.data.wc,"MA-WCMASS-Worcester.csv",row.names = FALSE)




############################# Merging all the dataframes to one ############################# 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.br,merged.data.py,merged.data.bs,merged.data.dk,merged.data.nk,merged.data.ex,merged.data.mx,merged.data.sf,merged.data.nk,merged.data.bk,merged.data.fi,merged.data.hp,merged.data.wc))
write.csv(df.merge,"MA-Counties-Merged.csv",row.names = FALSE)






