# Gagandeep Singh Khanuja
# Industrial Engineering
# IE 590
# Predictive Modeling

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part9(Missing Counties)")
ct<- read.csv("CT.csv", header = TRUE, sep = ",")
ct


######################## Litchfield Dataset ########################  
ct.litchfield <- ct[ct$COUNTY == "Hartford",]

levels(ct.litchfield$COUNTY) <- c(levels(ct.litchfield$COUNTY), "Litchfield") 
ct.litchfield$COUNTY[ct.litchfield$COUNTY == "Hartford"]  <- "Litchfield" 

write.csv(ct.litchfield,"CT-Litchfield.csv",row.names = FALSE)

######################## Tolland Dataset ########################
ct.tolland <- ct[ct$COUNTY == "Hartford",]

levels(ct.tolland$COUNTY) <- c(levels(ct.tolland$COUNTY), "Tolland") 
ct.tolland$COUNTY[ct.tolland$COUNTY == "Hartford"]  <- "Tolland" 

write.csv(ct.tolland,"CT-Tolland.csv",row.names = FALSE)

###################### Merging all the dataframes to one ###################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(ct,ct.litchfield,ct.tolland))
write.csv(df.merge,"CT-Final.csv",row.names = FALSE)

