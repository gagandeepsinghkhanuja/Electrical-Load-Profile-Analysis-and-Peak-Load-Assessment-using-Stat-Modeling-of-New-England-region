# Predicitive Modeling
# Gagandeep Singh Khanuja
# IE - 590
# 0029971620

#Install the packages dependencies.
#install.packages("chron")
library(chron)

#Set the working directory to the path of your choice. 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part11(Population and parameters)/MA")


############################ Mapping the MA - Barnstable Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Barnstable",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[1]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Barnstable",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[1]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Barnstable",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[1]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Barnstable",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[1]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Barnstable",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[1]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Barnstable",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[1]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Barnstable",
                                 Population = ""
)

ma.barnstable.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.barnstable.merged
write.csv(ma.barnstable.merged,"MA-SEMASS-Barnstable-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.barnstable.population <- read.csv("MA-SEMASS-Barnstable-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.barnstable <- read.csv("MA-SEMASS-Barnstable.csv",header = TRUE)
ma.barnstable


# Merge the Dataset based on Dates.
merged.data.bs <- merge(x=ma.barnstable[,c(1:22)],y=ma.barnstable.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.bs,"MA-SEMASS-Barnstable-Final.csv", row.names = FALSE)





















############################ Mapping the MA - Berkshire Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Berkshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[2]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Berkshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[2]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Berkshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[2]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Berkshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[2]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Berkshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[2]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Berkshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[2]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Berkshire",
                                 Population = ""
)

ma.berkshire.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.berkshire.merged
write.csv(ma.berkshire.merged,"MA-WCMASS-Berkshire-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.berkshire.population <- read.csv("MA-WCMASS-Berkshire-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.berkshire <- read.csv("MA-WCMASS-Berkshire.csv",header = TRUE)
ma.berkshire


# Merge the Dataset based on Dates.
merged.data.be <- merge(x=ma.berkshire[,c(1:22)],y=ma.berkshire.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.be,"MA-WCMASS-Berkshire-Final.csv", row.names = FALSE)

































############################ Mapping the MA - Bristol Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Bristol",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[3]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Bristol",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[3]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Bristol",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[3]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Bristol",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[3]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Bristol",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[3]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Bristol",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[3]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Bristol",
                                 Population = ""
)

ma.bristol.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.bristol.merged
write.csv(ma.bristol.merged,"MA-SEMASS-Bristol-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.bristol.population <- read.csv("MA-SEMASS-Bristol-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.bristol <- read.csv("MA-SEMASS-Bristol.csv",header = TRUE)
ma.bristol


# Merge the Dataset based on Dates.
merged.data.bo <- merge(x=ma.bristol[,c(1:22)],y=ma.bristol.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.bo,"MA-SEMASS-Bristol-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Dukes Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Dukes",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[4]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Dukes",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[4]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Dukes",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[4]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Dukes",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[4]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Dukes",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[4]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Dukes",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[4]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Dukes",
                                 Population = ""
)

ma.dukes.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.dukes.merged
write.csv(ma.dukes.merged,"MA-SEMASS-Dukes-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.dukes.population <- read.csv("MA-SEMASS-Dukes-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.dukes <- read.csv("MA-SEMASS-Dukes.csv",header = TRUE)
ma.dukes


# Merge the Dataset based on Dates.
merged.data.dk <- merge(x=ma.dukes[,c(1:22)],y=ma.dukes.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.dk,"MA-SEMASS-Dukes-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Essex Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Essex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[5]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Essex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[5]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Essex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[5]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Essex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[5]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Essex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[5]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Essex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[5]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Essex",
                                 Population = ""
)

ma.essex.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.essex.merged
write.csv(ma.essex.merged,"MA-NEMASS-Essex-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.essex.population <- read.csv("MA-NEMASS-Essex-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.essex <- read.csv("MA-NEMASS-Essex.csv",header = TRUE)
ma.essex


# Merge the Dataset based on Dates.
merged.data.ex <- merge(x=ma.essex[,c(1:22)],y=ma.essex.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ex,"MA-NEMASS-Essex-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Franklin Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[6]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[6]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[6]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[6]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[6]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[6]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Franklin",
                                 Population = ""
)

ma.franklin.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.franklin.merged
write.csv(ma.franklin.merged,"MA-WCMASS-Franklin-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.franklin.population <- read.csv("MA-WCMASS-Franklin-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.franklin <- read.csv("MA-WCMASS-Franklin.csv",header = TRUE)
ma.franklin


# Merge the Dataset based on Dates.
merged.data.fk <- merge(x=ma.franklin[,c(1:22)],y=ma.franklin.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.fk,"MA-WCMASS-Franklin-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Hampden Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampden",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[7]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampden",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[7]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampden",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[7]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampden",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[7]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampden",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[7]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampden",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[7]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampden",
                                 Population = ""
)

ma.Hampden.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Hampden.merged
write.csv(ma.Hampden.merged,"MA-WCMASS-Hampden-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Hampden.population <- read.csv("MA-WCMASS-Hampden-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Hampden <- read.csv("MA-WCMASS-Hampden.csv",header = TRUE)
ma.Hampden


# Merge the Dataset based on Dates.
merged.data.hp <- merge(x=ma.Hampden[,c(1:22)],y=ma.Hampden.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.hp,"MA-WCMASS-Hampden-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Hampshire Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[8]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[8]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[8]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[8]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[8]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampshire",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[8]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Hampshire",
                                 Population = ""
)

ma.Hampshire.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Hampshire.merged
write.csv(ma.Hampshire.merged,"MA-WCMASS-Hampshire-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Hampshire.population <- read.csv("MA-WCMASS-Hampshire-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Hampshire <- read.csv("MA-WCMASS-Hampshire.csv",header = TRUE)
ma.Hampshire


# Merge the Dataset based on Dates.
merged.data.hr <- merge(x=ma.Hampshire[,c(1:22)],y=ma.Hampshire.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.hr,"MA-WCMASS-Hampshire-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Middlesex Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[9]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[9]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[9]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[9]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[9]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[9]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Middlesex",
                                 Population = ""
)

ma.Middlesex.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Middlesex.merged
write.csv(ma.Middlesex.merged,"MA-NEMASS-Middlesex-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Middlesex.population <- read.csv("MA-NEMASS-Middlesex-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Middlesex <- read.csv("MA-NEMASS-Middlesex.csv",header = TRUE)
ma.Middlesex


# Merge the Dataset based on Dates.
merged.data.mx <- merge(x=ma.Middlesex[,c(1:22)],y=ma.Middlesex.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.mx,"MA-NEMASS-Middlesex-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Nantucket Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Nantucket",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[10]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Nantucket",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[10]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Nantucket",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[10]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Nantucket",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[10]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Nantucket",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[10]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Nantucket",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[10]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Nantucket",
                                 Population = ""
)

ma.Nantucket.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Nantucket.merged
write.csv(ma.Nantucket.merged,"MA-SEMASS-Nantucket-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Nantucket.population <- read.csv("MA-SEMASS-Nantucket-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Nantucket <- read.csv("MA-SEMASS-Nantucket.csv",header = TRUE)
ma.Nantucket


# Merge the Dataset based on Dates.
merged.data.nt <- merge(x=ma.Nantucket[,c(1:22)],y=ma.Nantucket.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.nt,"MA-SEMASS-Nantucket-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Norfolk Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Norfolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[11]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Norfolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[11]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Norfolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[11]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Norfolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[11]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Norfolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[11]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Norfolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[11]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Norfolk",
                                 Population = ""
)

ma.Norfolk.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Norfolk.merged
write.csv(ma.Norfolk.merged,"MA-NEMASS-Norfolk-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Norfolk.population <- read.csv("MA-NEMASS-Norfolk-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Norfolk <- read.csv("MA-NEMASS-Norfolk.csv",header = TRUE)
ma.Norfolk


# Merge the Dataset based on Dates.
merged.data.no <- merge(x=ma.Norfolk[,c(1:22)],y=ma.Norfolk.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.no,"MA-NEMASS-Norfolk-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Plymouth Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Plymouth",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[12]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Plymouth",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[12]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Plymouth",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[12]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Plymouth",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[12]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Plymouth",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[12]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Plymouth",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[12]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Plymouth",
                                 Population = ""
)

ma.Plymouth.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Plymouth.merged
write.csv(ma.Plymouth.merged,"MA-SEMASS-Plymouth-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Plymouth.population <- read.csv("MA-SEMASS-Plymouth-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Plymouth <- read.csv("MA-SEMASS-Plymouth.csv",header = TRUE)
ma.Plymouth


# Merge the Dataset based on Dates.
merged.data.py <- merge(x=ma.Plymouth[,c(1:22)],y=ma.Plymouth.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.py,"MA-SEMASS-Plymouth-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Suffolk Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Suffolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[13]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Suffolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[13]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Suffolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[13]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Suffolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[13]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Suffolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[13]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Suffolk",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[13]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Suffolk",
                                 Population = ""
)

ma.Suffolk.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Suffolk.merged
write.csv(ma.Suffolk.merged,"MA-NEMASS-Suffolk-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Suffolk.population <- read.csv("MA-NEMASS-Suffolk-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Suffolk <- read.csv("MA-NEMASS-Suffolk.csv",header = TRUE)
ma.Suffolk


# Merge the Dataset based on Dates.
merged.data.sk <- merge(x=ma.Suffolk[,c(1:22)],y=ma.Suffolk.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.sk,"MA-NEMASS-Suffolk-Final.csv", row.names = FALSE)


































############################ Mapping the MA - Worcester Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ma.population <- read.csv("MA-PopulationCounty.csv", header = TRUE)
ma.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ma.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Worcester",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2011[14]))
)

ma.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Worcester",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2012[14]))
)

ma.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Worcester",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2013[14]))
)

ma.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Worcester",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2014[14]))
)

ma.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Worcester",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2015[14]))
)

ma.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Worcester",
                                 Population = as.numeric(gsub(",", "", ma.population$POP_ESTIMATE_2016[14]))
)

ma.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "MA", 
                                 County = "Worcester",
                                 Population = ""
)

ma.Worcester.merged <- rbind(ma.population.2011,ma.population.2012,ma.population.2013,ma.population.2014,ma.population.2015,ma.population.2016,ma.population.2017)
ma.Worcester.merged
write.csv(ma.Worcester.merged,"MA-WCMASS-Worcester-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ma.Worcester.population <- read.csv("MA-WCMASS-Worcester-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ma.Worcester <- read.csv("MA-WCMASS-Worcester.csv",header = TRUE)
ma.Worcester


# Merge the Dataset based on Dates.
merged.data.wc <- merge(x=ma.Worcester[,c(1:22)],y=ma.Worcester.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.wc,"MA-WCMASS-Worcester-Final.csv", row.names = FALSE)





































##################### Merging all the dataframes in Maine ################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.be,merged.data.bo,merged.data.bs,merged.data.dk,merged.data.ex,merged.data.fk,merged.data.hp,merged.data.hr,merged.data.mx,merged.data.no,merged.data.nt,merged.data.py,merged.data.sk,merged.data.wc))
df.merge.sorted <- df.merge[order(df.merge$COUNTY),]
write.csv(df.merge.sorted,"MA.csv",row.names = FALSE)

