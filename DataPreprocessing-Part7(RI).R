# Predicitive Modeling
# Gagandeep Singh Khanuja
# IE - 590
# 0029971620

#Install the packages dependencies.
#install.packages("chron")
library(chron)

#Set the working directory to the path of your choice. 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part7(Merging Population with Dataset)/RI")


############################ Mapping the RI - Kent Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ri.population <- read.csv("RI-PopulationCounty.csv", header = TRUE)
ri.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ri.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Kent",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2011[1]))
)

ri.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Kent",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2012[1]))
)

ri.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Kent",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2013[1]))
)

ri.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Kent",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2014[1]))
)

ri.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Kent",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2015[1]))
)

ri.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Kent",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2016[1]))
)

ri.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Kent",
                                 Population = ""
)

ri.kent.merged <- rbind(ri.population.2011,ri.population.2012,ri.population.2013,ri.population.2014,ri.population.2015,ri.population.2016,ri.population.2017)
ri.kent.merged
write.csv(ri.kent.merged,"RI-Kent-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ri.kent.population <- read.csv("RI-Kent-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ri.kent <- read.csv("RI-Kent.csv",header = TRUE)
ri.kent


# Merge the Dataset based on Dates.
merged.data.kn <- merge(x=ri.kent[,c(1:22)],y=ri.kent.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.kn,"RI-Kent-Final.csv", row.names = FALSE)




















############################ Mapping the RI - Newport Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ri.population <- read.csv("RI-PopulationCounty.csv", header = TRUE)
ri.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ri.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Newport",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2011[2]))
)

ri.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Newport",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2012[2]))
)

ri.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Newport",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2013[2]))
)

ri.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Newport",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2014[2]))
)

ri.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Newport",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2015[2]))
)

ri.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Newport",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2016[2]))
)

ri.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Newport",
                                 Population = ""
)

ri.newport.merged <- rbind(ri.population.2011,ri.population.2012,ri.population.2013,ri.population.2014,ri.population.2015,ri.population.2016,ri.population.2017)
ri.newport.merged
write.csv(ri.newport.merged,"RI-Newport-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ri.newport.population <- read.csv("RI-Newport-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ri.newport <- read.csv("RI-Newport.csv",header = TRUE)
ri.newport


# Merge the Dataset based on Dates.
merged.data.np <- merge(x=ri.newport[,c(1:22)],y=ri.newport.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.np,"RI-Newport-Final.csv", row.names = FALSE)


































############################ Mapping the RI - Providence Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ri.population <- read.csv("RI-PopulationCounty.csv", header = TRUE)
ri.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ri.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Providence",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2011[3]))
)

ri.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Providence",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2012[3]))
)

ri.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Providence",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2013[3]))
)

ri.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Providence",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2014[3]))
)

ri.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Providence",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2015[3]))
)

ri.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Providence",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2016[3]))
)

ri.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Providence",
                                 Population = ""
)

ri.providence.merged <- rbind(ri.population.2011,ri.population.2012,ri.population.2013,ri.population.2014,ri.population.2015,ri.population.2016,ri.population.2017)
ri.providence.merged
write.csv(ri.providence.merged,"RI-Providence-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ri.providence.population <- read.csv("RI-Providence-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ri.providence <- read.csv("RI-Providence.csv",header = TRUE)
ri.providence


# Merge the Dataset based on Dates.
merged.data.pr <- merge(x=ri.providence[,c(1:22)],y=ri.providence.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.pr,"RI-Providence-Final.csv", row.names = FALSE)


































############################ Mapping the RI - Washington Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ri.population <- read.csv("RI-PopulationCounty.csv", header = TRUE)
ri.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ri.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2011[4]))
)

ri.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2012[4]))
)

ri.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2013[4]))
)

ri.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2014[4]))
)

ri.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2015[4]))
)

ri.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", ri.population$POP_ESTIMATE_2016[4]))
)

ri.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "RI", 
                                 County = "Washington",
                                 Population = ""
)

ri.washington.merged <- rbind(ri.population.2011,ri.population.2012,ri.population.2013,ri.population.2014,ri.population.2015,ri.population.2016,ri.population.2017)
ri.washington.merged
write.csv(ri.washington.merged,"RI-Washington-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ri.washington.population <- read.csv("RI-Washington-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ri.washington <- read.csv("RI-Washington.csv",header = TRUE)
ri.washington


# Merge the Dataset based on Dates.
merged.data.ws <- merge(x=ri.washington[,c(1:22)],y=ri.washington.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ws,"RI-Washington-Final.csv", row.names = FALSE)


































##################### Merging all the dataframes in Rhode Island ##################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.kn,merged.data.np,merged.data.pr,merged.data.ws))
write.csv(df.merge,"RI.csv",row.names = FALSE)


