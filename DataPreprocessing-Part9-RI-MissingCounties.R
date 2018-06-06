# Gagandeep Singh Khanuja
# Industrial Engineering
# IE 590
# Predictive Modeling

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part9(Missing Counties)")
ri<- read.csv("RI.csv", header = TRUE, sep = ",")
ri


######################## Bristol Dataset ########################  
ri.bristol <- ri[ri$COUNTY == "Kent",]

levels(ri.bristol$COUNTY) <- c(levels(ri.bristol$COUNTY), "Bristol") 
ri.bristol$COUNTY[ri.bristol$COUNTY == "Kent"]  <- "Bristol" 

write.csv(ri.bristol,"RI-Bristol.csv",row.names = FALSE)


###################### Merging all the dataframes to one ###################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(ri,ri.bristol))
write.csv(df.merge,"RI-Final.csv",row.names = FALSE)

