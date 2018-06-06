# Gagandeep Singh Khanuja
# Industrial Engineering
# IE 590
# Predictive Modeling

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part9(Missing Counties)")
vt<- read.csv("VT.csv", header = TRUE, sep = ",")
vt


######################## Windham Dataset ########################  
vt.windham <- vt[vt$COUNTY == "Rutland",]

levels(vt.windham$COUNTY) <- c(levels(vt.windham$COUNTY), "Windham") 
vt.windham$COUNTY[vt.windham$COUNTY == "Rutland"]  <- "Windham" 

write.csv(vt.windham,"VT-Windham.csv",row.names = FALSE)


######################## Orange Dataset ########################  
vt.orange <- vt[vt$COUNTY == "Chittenden",]

levels(vt.orange$COUNTY) <- c(levels(vt.orange$COUNTY), "Orange") 
vt.orange$COUNTY[vt.orange$COUNTY == "Chittenden"]  <- "Orange" 

write.csv(vt.orange,"VT-Orange.csv",row.names = FALSE)



######################## Grand Isle Dataset ########################  
vt.grandisle <- vt[vt$COUNTY == "Chittenden",]

levels(vt.grandisle$COUNTY) <- c(levels(vt.grandisle$COUNTY), "Grand Isle") 
vt.grandisle$COUNTY[vt.grandisle$COUNTY == "Chittenden"]  <- "Grand Isle" 

write.csv(vt.grandisle,"VT-GrandIsle.csv",row.names = FALSE)



######################## Essex Dataset ########################  
vt.essex <- vt[vt$COUNTY == "Chittenden",]

levels(vt.essex$COUNTY) <- c(levels(vt.essex$COUNTY), "Essex") 
vt.essex$COUNTY[vt.essex$COUNTY == "Chittenden"]  <- "Essex" 

write.csv(vt.essex,"VT-Essex.csv",row.names = FALSE)



###################### Merging all the dataframes to one ###################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(vt,vt.windham,vt.orange,vt.grandisle,vt.essex))
write.csv(df.merge,"VT-Final.csv",row.names = FALSE)

