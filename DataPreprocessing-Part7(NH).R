# Predicitive Modeling
# Gagandeep Singh Khanuja
# IE - 590
# 0029971620

#Install the packages dependencies.
#install.packages("chron")
library(chron)

#Set the working directory to the path of your choice. 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part7(Merging Population with Dataset)/NH")


############################ Mapping the NH - Belknap Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Belknap",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[1]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Belknap",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[1]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Belknap",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[1]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Belknap",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[1]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Belknap",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[1]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Belknap",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[1]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Belknap",
                                 Population = ""
)

nh.belknap.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.belknap.merged
write.csv(nh.belknap.merged,"NH-Belknap-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.belknap.population <- read.csv("NH-Belknap-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.belknap <- read.csv("NH-Belknap.csv",header = TRUE)
nh.belknap


# Merge the Dataset based on Dates.
merged.data.bl <- merge(x=nh.belknap[,c(1:22)],y=nh.belknap.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.bl,"NH-Belknap-Final.csv", row.names = FALSE)





















############################ Mapping the NH - Cheshire Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Cheshire",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[2]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Cheshire",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[2]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Cheshire",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[2]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Cheshire",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[2]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Cheshire",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[2]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Cheshire",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[2]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Cheshire",
                                 Population = ""
)

nh.cheshire.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.cheshire.merged
write.csv(nh.cheshire.merged,"NH-Cheshire-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.cheshire.population <- read.csv("NH-Cheshire-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.cheshire <- read.csv("NH-Cheshire.csv",header = TRUE)
nh.cheshire


# Merge the Dataset based on Dates.
merged.data.ch <- merge(x=nh.cheshire[,c(1:22)],y=nh.cheshire.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ch,"NH-Cheshire-Final.csv", row.names = FALSE)


































############################ Mapping the NH - Coos Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Coos",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[3]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Coos",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[3]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Coos",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[3]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Coos",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[3]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Coos",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[3]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Coos",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[3]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Coos",
                                 Population = ""
)

nh.coos.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.coos.merged
write.csv(nh.coos.merged,"NH-Coos-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.coos.population <- read.csv("NH-Coos-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.coos <- read.csv("NH-Coos.csv",header = TRUE)
nh.coos


# Merge the Dataset based on Dates.
merged.data.co <- merge(x=nh.coos[,c(1:22)],y=nh.coos.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.co,"NH-Coos-Final.csv", row.names = FALSE)


































############################ Mapping the NH - Grafton Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Grafton",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[4]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Grafton",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[4]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Grafton",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[4]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Grafton",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[4]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Grafton",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[4]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Grafton",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[4]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Grafton",
                                 Population = ""
)

nh.grafton.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.grafton.merged
write.csv(nh.grafton.merged,"NH-Grafton-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.grafton.population <- read.csv("NH-Grafton-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.grafton <- read.csv("NH-Grafton.csv",header = TRUE)
nh.grafton


# Merge the Dataset based on Dates.
merged.data.gf <- merge(x=nh.grafton[,c(1:22)],y=nh.grafton.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.gf,"NH-Grafton-Final.csv", row.names = FALSE)


































############################ Mapping the NH - Hillsborough Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Hillsborough",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[5]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Hillsborough",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[5]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Hillsborough",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[5]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Hillsborough",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[5]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Hillsborough",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[5]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Hillsborough",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[5]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Hillsborough",
                                 Population = ""
)

nh.hillsborough.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.hillsborough.merged
write.csv(nh.hillsborough.merged,"NH-Hillsborough-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.hillsborough.population <- read.csv("NH-Hillsborough-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.hillsborough <- read.csv("NH-Hillsborough.csv",header = TRUE)
nh.hillsborough


# Merge the Dataset based on Dates.
merged.data.ho <- merge(x=nh.hillsborough[,c(1:22)],y=nh.hillsborough.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ho,"NH-Hillsborough-Final.csv", row.names = FALSE)


































############################ Mapping the NH - Merrimack Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Merrimack",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[6]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Merrimack",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[6]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Merrimack",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[6]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Merrimack",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[6]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Merrimack",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[6]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Merrimack",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[6]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Merrimack",
                                 Population = ""
)

nh.merrimack.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.merrimack.merged
write.csv(nh.merrimack.merged,"NH-Merrimack-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.merrimack.population <- read.csv("NH-Merrimack-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.merrimack <- read.csv("NH-Merrimack.csv",header = TRUE)
nh.merrimack


# Merge the Dataset based on Dates.
merged.data.mk <- merge(x=nh.merrimack[,c(1:22)],y=nh.merrimack.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.mk,"NH-Merrimack-Final.csv", row.names = FALSE)


































############################ Mapping the NH - Rockingham Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Rockingham",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[7]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Rockingham",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[7]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Rockingham",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[7]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Rockingham",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[7]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Rockingham",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[7]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Rockingham",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[7]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Rockingham",
                                 Population = ""
)

nh.rockingham.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.rockingham.merged
write.csv(nh.rockingham.merged,"NH-Rockingham-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.rockingham.population <- read.csv("NH-Rockingham-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.rockingham <- read.csv("NH-Rockingham.csv",header = TRUE)
nh.rockingham


# Merge the Dataset based on Dates.
merged.data.ro <- merge(x=nh.rockingham[,c(1:22)],y=nh.rockingham.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ro,"NH-Rockingham-Final.csv", row.names = FALSE)

































############################ Mapping the NH - Strafford Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
nh.population <- read.csv("NH-PopulationCounty.csv", header = TRUE)
nh.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
nh.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Strafford",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2011[8]))
)

nh.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Strafford",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2012[8]))
)

nh.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Strafford",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2013[8]))
)

nh.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Strafford",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2014[8]))
)

nh.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Strafford",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2015[8]))
)

nh.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Strafford",
                                 Population = as.numeric(gsub(",", "", nh.population$POP_ESTIMATE_2016[8]))
)

nh.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "NH", 
                                 County = "Strafford",
                                 Population = ""
)

nh.strafford.merged <- rbind(nh.population.2011,nh.population.2012,nh.population.2013,nh.population.2014,nh.population.2015,nh.population.2016,nh.population.2017)
nh.strafford.merged
write.csv(nh.strafford.merged,"NH-Strafford-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
nh.strafford.population <- read.csv("NH-Strafford-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
nh.strafford <- read.csv("NH-Strafford.csv",header = TRUE)
nh.strafford


# Merge the Dataset based on Dates.
merged.data.sf <- merge(x=nh.strafford[,c(1:22)],y=nh.strafford.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.sf,"NH-Strafford-Final.csv", row.names = FALSE)


































##################### Merging all the dataframes in New Hampshire ################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.bl,merged.data.ch,merged.data.co,merged.data.gf,merged.data.ho,merged.data.mk,merged.data.ro,merged.data.sf))
write.csv(df.merge,"NH.csv",row.names = FALSE)



