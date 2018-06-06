# Gagandeep Singh Khanuja
# Industrial Engineering
# IE 590
# Predictive Modeling

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part9(Missing Counties)")
nh<- read.csv("NH.csv", header = TRUE, sep = ",")
nh


######################## Sullivan Dataset ########################  
nh.sullivan <- nh[nh$COUNTY == "Hillsborough",]

levels(nh.sullivan$COUNTY) <- c(levels(nh.sullivan$COUNTY), "Sullivan") 
nh.sullivan$COUNTY[nh.sullivan$COUNTY == "Hillsborough"]  <- "Sullivan" 

write.csv(nh.sullivan,"NH-Sullivan.csv",row.names = FALSE)


######################## Carroll Dataset ########################  
nh.carroll <- nh[nh$COUNTY == "Grafton",]

levels(nh.carroll$COUNTY) <- c(levels(nh.carroll$COUNTY), "Carroll") 
nh.carroll$COUNTY[nh.carroll$COUNTY == "Grafton"]  <- "Carroll" 

write.csv(nh.carroll,"NH-Carroll.csv",row.names = FALSE)



###################### Merging all the dataframes to one ###################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(nh,nh.sullivan,nh.carroll))
write.csv(df.merge,"NH-Final.csv",row.names = FALSE)

