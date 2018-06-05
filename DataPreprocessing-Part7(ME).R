# Predicitive Modeling
# Gagandeep Singh Khanuja
# IE - 590
# 0029971620

#Install the packages dependencies.
#install.packages("chron")
library(chron)

#Set the working directory to the path of your choice. 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part7(Merging Population with Dataset)/ME")


############################ Mapping the ME - Androscoggin Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Androscoggin",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[1]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Androscoggin",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[1]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Androscoggin",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[1]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Androscoggin",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[1]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Androscoggin",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[1]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Androscoggin",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[1]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Androscoggin",
                                 Population = ""
)

me.androscoggin.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.androscoggin.merged
write.csv(me.androscoggin.merged,"ME-Androscoggin-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.androscoggin.population <- read.csv("ME-Androscoggin-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.androscoggin <- read.csv("ME-Androscoggin.csv",header = TRUE)
me.androscoggin


# Merge the Dataset based on Dates.
merged.data.ag <- merge(x=me.androscoggin[,c(1:22)],y=me.androscoggin.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ag,"ME-Androscoggin-Final.csv", row.names = FALSE)





















############################ Mapping the ME - Aroostook Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Aroostook",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[2]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Aroostook",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[2]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Aroostook",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[2]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Aroostook",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[2]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Aroostook",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[2]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Aroostook",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[2]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Aroostook",
                                 Population = ""
)

me.aroostook.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.aroostook.merged
write.csv(me.aroostook.merged,"ME-Aroostook-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.aroostook.population <- read.csv("ME-Aroostook-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.aroostook <- read.csv("ME-Aroostook.csv",header = TRUE)
me.aroostook


# Merge the Dataset based on Dates.
merged.data.ak <- merge(x=me.aroostook[,c(1:22)],y=me.aroostook.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ak,"ME-Aroostook-Final.csv", row.names = FALSE)

































############################ Mapping the ME - Cumberland Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Cumberland",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[3]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Cumberland",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[3]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Cumberland",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[3]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Cumberland",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[3]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Cumberland",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[3]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Cumberland",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[3]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Cumberland",
                                 Population = ""
)

me.cumberland.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.cumberland.merged
write.csv(me.cumberland.merged,"ME-Cumberland-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.cumberland.population <- read.csv("ME-Cumberland-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.cumberland <- read.csv("ME-Cumberland.csv",header = TRUE)
me.cumberland


# Merge the Dataset based on Dates.
merged.data.cl <- merge(x=me.cumberland[,c(1:22)],y=me.cumberland.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.cl,"ME-Cumberland-Final.csv", row.names = FALSE)


































############################ Mapping the ME - Hancock Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Hancock",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[4]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Hancock",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[4]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Hancock",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[4]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Hancock",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[4]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Hancock",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[4]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Hancock",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[4]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Hancock",
                                 Population = ""
)

me.hancock.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.hancock.merged
write.csv(me.hancock.merged,"ME-Hancock-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.hancock.population <- read.csv("ME-Hancock-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.hancock <- read.csv("ME-Hancock.csv",header = TRUE)
me.hancock


# Merge the Dataset based on Dates.
merged.data.hk <- merge(x=me.hancock[,c(1:22)],y=me.hancock.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.hk,"ME-Hancock-Final.csv", row.names = FALSE)


































############################ Mapping the ME - Kennebec Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Kennebec",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[5]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Kennebec",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[5]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Kennebec",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[5]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Kennebec",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[5]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Kennebec",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[5]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Kennebec",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[5]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Kennebec",
                                 Population = ""
)

me.kennebec.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.kennebec.merged
write.csv(me.kennebec.merged,"ME-Kennebec-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.kennebec.population <- read.csv("ME-Kennebec-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.kennebec <- read.csv("ME-Kennebec.csv",header = TRUE)
me.kennebec


# Merge the Dataset based on Dates.
merged.data.kc <- merge(x=me.kennebec[,c(1:22)],y=me.kennebec.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.kc,"ME-Kennebec-Final.csv", row.names = FALSE)


































############################ Mapping the ME - Knox Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Knox",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[6]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Knox",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[6]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Knox",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[6]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Knox",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[6]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Knox",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[6]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Knox",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[6]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Knox",
                                 Population = ""
)

me.knox.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.knox.merged
write.csv(me.knox.merged,"ME-Knox-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.knox.population <- read.csv("ME-Knox-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.knox <- read.csv("ME-Knox.csv",header = TRUE)
me.knox


# Merge the Dataset based on Dates.
merged.data.kx <- merge(x=me.knox[,c(1:22)],y=me.knox.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.kx,"ME-Knox-Final.csv", row.names = FALSE)


































############################ Mapping the ME - Lincoln Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Lincoln",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[7]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Lincoln",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[7]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Lincoln",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[7]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Lincoln",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[7]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Lincoln",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[7]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Lincoln",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[7]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Lincoln",
                                 Population = ""
)

me.lincoln.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.lincoln.merged
write.csv(me.lincoln.merged,"ME-Lincoln-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.lincoln.population <- read.csv("ME-Lincoln-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.lincoln <- read.csv("ME-Lincoln.csv",header = TRUE)
me.lincoln


# Merge the Dataset based on Dates.
merged.data.ln <- merge(x=me.lincoln[,c(1:22)],y=me.lincoln.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ln,"ME-Lincoln-Final.csv", row.names = FALSE)


































############################ Mapping the ME - Oxford Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Oxford",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[8]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Oxford",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[8]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Oxford",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[8]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Oxford",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[8]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Oxford",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[8]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Oxford",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[8]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Oxford",
                                 Population = ""
)

me.oxford.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.oxford.merged
write.csv(me.oxford.merged,"ME-Oxford-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.oxford.population <- read.csv("ME-Oxford-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.oxford <- read.csv("ME-Oxford.csv",header = TRUE)
me.oxford


# Merge the Dataset based on Dates.
merged.data.ox <- merge(x=me.oxford[,c(1:22)],y=me.oxford.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ox,"ME-Oxford-Final.csv", row.names = FALSE)


































############################ Mapping the ME - Penobscot Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Penobscot",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[9]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Penobscot",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[9]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Penobscot",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[9]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Penobscot",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[9]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Penobscot",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[9]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Penobscot",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[9]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Penobscot",
                                 Population = ""
)

me.penobscot.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.penobscot.merged
write.csv(me.penobscot.merged,"ME-Penobscot-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.penobscot.population <- read.csv("ME-Penobscot-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.penobscot <- read.csv("ME-Penobscot.csv",header = TRUE)
me.penobscot


# Merge the Dataset based on Dates.
merged.data.pn <- merge(x=me.penobscot[,c(1:22)],y=me.penobscot.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.pn,"ME-Penobscot-Final.csv", row.names = FALSE)


































############################ Mapping the ME - Piscataquis Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
me.population <- read.csv("ME-PopulationCounty.csv", header = TRUE)
me.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
me.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Piscataquis",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2011[10]))
)

me.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Piscataquis",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2012[10]))
)

me.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Piscataquis",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2013[10]))
)

me.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Piscataquis",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2014[10]))
)

me.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Piscataquis",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2015[10]))
)

me.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Piscataquis",
                                 Population = as.numeric(gsub(",", "", me.population$POP_ESTIMATE_2016[10]))
)

me.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "ME", 
                                 County = "Piscataquis",
                                 Population = ""
)

me.piscataquis.merged <- rbind(me.population.2011,me.population.2012,me.population.2013,me.population.2014,me.population.2015,me.population.2016,me.population.2017)
me.piscataquis.merged
write.csv(me.piscataquis.merged,"ME-Piscataquis-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
me.piscataquis.population <- read.csv("ME-Piscataquis-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
me.piscataquis <- read.csv("ME-Piscataquis.csv",header = TRUE)
me.piscataquis


# Merge the Dataset based on Dates.
merged.data.pk <- merge(x=me.piscataquis[,c(1:22)],y=me.piscataquis.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.pk,"ME-Piscataquis-Final.csv", row.names = FALSE)


































##################### Merging all the dataframes in Maine ################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.ak,merged.data.cl,merged.data.hk,merged.data.kc,merged.data.kx,merged.data.ln,merged.data.ox,merged.data.pn,merged.data.pk))
write.csv(df.merge,"ME.csv",row.names = FALSE)


