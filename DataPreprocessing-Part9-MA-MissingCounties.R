# Gagandeep Singh Khanuja
# Industrial Engineering
# IE 590
# Predictive Modeling

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part9(Missing Counties)")
ct<- read.csv("CT.csv", header = TRUE, sep = ",")
ct
ma<- read.csv("MA.csv", header = TRUE, sep = ",")
ma


######################## Hampshire Dataset ########################  
ma.hampshire <- ct[ct$COUNTY == "Hartford",]

levels(ma.hampshire$COUNTY) <- c(levels(ma.hampshire$COUNTY), "Hampshire") 
ma.hampshire$COUNTY[ma.hampshire$COUNTY == "Hartford"]  <- "Hampshire" 

levels(ma.hampshire$STATE) <- c(levels(ma.hampshire$STATE), "MA") 
ma.hampshire$STATE[ma.hampshire$STATE == "CT"]  <- "MA" 

write.csv(ma.hampshire,"MA-Hampshire.csv",row.names = FALSE)

###################### Merging all the dataframes to one ###################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(ma,ma.hampshire))
write.csv(df.merge,"MA-Final.csv",row.names = FALSE)
