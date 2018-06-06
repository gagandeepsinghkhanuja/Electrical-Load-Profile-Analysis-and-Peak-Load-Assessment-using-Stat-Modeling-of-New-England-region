# Gagandeep Singh Khanuja
# Industrial Engineering
# IE 590
# Predictive Modeling

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part9(Missing Counties)")
me<- read.csv("ME.csv", header = TRUE, sep = ",")
me


######################## Franklin Dataset ########################  
me.franklin <- me[me$COUNTY == "Hancock",]

levels(me.franklin$COUNTY) <- c(levels(me.franklin$COUNTY), "Franklin") 
me.franklin$COUNTY[me.franklin$COUNTY == "Hancock"]  <- "Franklin" 

write.csv(me.franklin,"ME-Franklin.csv",row.names = FALSE)


######################## Sagadahoc Dataset ########################  
me.sagadahoc <- me[me$COUNTY == "Cumberland",]

levels(me.sagadahoc$COUNTY) <- c(levels(me.sagadahoc$COUNTY), "Sagadahoc") 
me.sagadahoc$COUNTY[me.sagadahoc$COUNTY == "Cumberland"]  <- "Sagadahoc" 

write.csv(me.sagadahoc,"ME-Sagadahoc.csv",row.names = FALSE)


######################## Somerset Dataset ########################  
me.somerset <- me[me$COUNTY == "Penobscot",]

levels(me.somerset$COUNTY) <- c(levels(me.somerset$COUNTY), "Somerset") 
me.somerset$COUNTY[me.somerset$COUNTY == "Penobscot"]  <- "Somerset" 

write.csv(me.somerset,"ME-Somerset.csv",row.names = FALSE)


######################## Waldo Dataset ########################  
me.waldo <- me[me$COUNTY == "Penobscot",]

levels(me.waldo$COUNTY) <- c(levels(me.waldo$COUNTY), "Waldo") 
me.waldo$COUNTY[me.waldo$COUNTY == "Penobscot"]  <- "Waldo" 

write.csv(me.waldo,"ME-Waldo.csv",row.names = FALSE)



######################## Washington Dataset ########################  
me.washington <- me[me$COUNTY == "Knox",]

levels(me.washington$COUNTY) <- c(levels(me.washington$COUNTY), "Washington") 
me.washington$COUNTY[me.washington$COUNTY == "Knox"]  <- "Washington" 

write.csv(me.washington,"ME-Washington.csv",row.names = FALSE)



###################### Merging all the dataframes to one ###################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(me,me.franklin,me.sagadahoc,me.somerset,me.waldo,me.washington))
write.csv(df.merge,"ME-Final.csv",row.names = FALSE)

