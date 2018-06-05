# Predicitive Modeling
# Gagandeep Singh Khanuja
# IE - 590
# 0029971620

#Install the packages dependencies.
#install.packages("chron")
library(chron)

#Set the working directory to the path of your choice. 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part7(Merging Population with Dataset)/VT")


############################ Mapping the VT - Addison Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Addison",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[1]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Addison",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[1]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Addison",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[1]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Addison",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[1]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Addison",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[1]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Addison",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[1]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Addison",
                                 Population = ""
)

vt.addison.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.addison.merged
write.csv(vt.addison.merged,"VT-Addison-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.addison.population <- read.csv("VT-Addison-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.addison <- read.csv("VT-Addison.csv",header = TRUE)
vt.addison


# Merge the Dataset based on Dates.
merged.data.ad <- merge(x=vt.addison[,c(1:22)],y=vt.addison.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ad,"VT-Addison-Final.csv", row.names = FALSE)





















############################ Mapping the VT - Bennington Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Bennington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[2]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Bennington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[2]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Bennington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[2]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Bennington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[2]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Bennington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[2]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Bennington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[2]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Bennington",
                                 Population = ""
)

vt.bennington.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.bennington.merged
write.csv(vt.bennington.merged,"VT-Bennington-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.bennington.population <- read.csv("VT-Bennington-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.bennington <- read.csv("VT-Bennington.csv",header = TRUE)
vt.bennington


# Merge the Dataset based on Dates.
merged.data.bg <- merge(x=vt.bennington[,c(1:22)],y=vt.bennington.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.bg,"VT-Bennington-Final.csv", row.names = FALSE)


































############################ Mapping the VT - Caledonia Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Caledonia",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[3]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Caledonia",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[3]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Caledonia",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[3]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Caledonia",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[3]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Caledonia",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[3]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Caledonia",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[3]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Caledonia",
                                 Population = ""
)

vt.caledonia.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.caledonia.merged
write.csv(vt.caledonia.merged,"VT-Caledonia-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.caledonia.population <- read.csv("VT-Caledonia-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.caledonia <- read.csv("VT-Caledonia.csv",header = TRUE)
vt.caledonia


# Merge the Dataset based on Dates.
merged.data.cd <- merge(x=vt.caledonia[,c(1:22)],y=vt.caledonia.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.cd,"VT-Caledonia-Final.csv", row.names = FALSE)


































############################ Mapping the VT - Chittenden Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Chittenden",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[4]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Chittenden",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[4]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Chittenden",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[4]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Chittenden",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[4]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Chittenden",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[4]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Chittenden",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[4]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Chittenden",
                                 Population = ""
)

vt.chittenden.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.chittenden.merged
write.csv(vt.chittenden.merged,"VT-Chittenden-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.chittenden.population <- read.csv("VT-Chittenden-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.chittenden <- read.csv("VT-Chittenden.csv",header = TRUE)
vt.chittenden


# Merge the Dataset based on Dates.
merged.data.ct <- merge(x=vt.chittenden[,c(1:22)],y=vt.chittenden.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.ct,"VT-Chittenden-Final.csv", row.names = FALSE)


































############################ Mapping the VT - Franklin Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[5]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[5]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[5]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[5]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[5]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Franklin",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[5]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Franklin",
                                 Population = ""
)

vt.franklin.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.franklin.merged
write.csv(vt.franklin.merged,"VT-Franklin-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.franklin.population <- read.csv("VT-Franklin-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.franklin <- read.csv("VT-Franklin.csv",header = TRUE)
vt.franklin


# Merge the Dataset based on Dates.
merged.data.fk <- merge(x=vt.franklin[,c(1:22)],y=vt.franklin.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.fk,"VT-Franklin-Final.csv", row.names = FALSE)



































############################ Mapping the VT - Lamoille Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Lamoille",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[6]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Lamoille",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[6]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Lamoille",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[6]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Lamoille",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[6]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Lamoille",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[6]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Lamoille",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[6]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Lamoille",
                                 Population = ""
)

vt.lamoille.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.lamoille.merged
write.csv(vt.lamoille.merged,"VT-Lamoille-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.lamoille.population <- read.csv("VT-Lamoille-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.lamoille <- read.csv("VT-Lamoille.csv",header = TRUE)
vt.lamoille


# Merge the Dataset based on Dates.
merged.data.lm <- merge(x=vt.lamoille[,c(1:22)],y=vt.lamoille.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.lm,"VT-Lamoille-Final.csv", row.names = FALSE)


































############################ Mapping the VT - Orleans Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Orleans",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[7]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Orleans",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[7]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Orleans",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[7]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Orleans",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[7]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Orleans",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[7]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Orleans",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[7]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Orleans",
                                 Population = ""
)

vt.orleans.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.orleans.merged
write.csv(vt.orleans.merged,"VT-Orleans-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.orleans.population <- read.csv("VT-Orleans-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.orleans <- read.csv("VT-Orleans.csv",header = TRUE)
vt.orleans


# Merge the Dataset based on Dates.
merged.data.os <- merge(x=vt.orleans[,c(1:22)],y=vt.orleans.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.os,"VT-Orleans-Final.csv", row.names = FALSE)


































############################ Mapping the VT - Rutland Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Rutland",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[8]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Rutland",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[8]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Rutland",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[8]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Rutland",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[8]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Rutland",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[8]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Rutland",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[8]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Rutland",
                                 Population = ""
)

vt.rutland.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.rutland.merged
write.csv(vt.rutland.merged,"VT-Rutland-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.rutland.population <- read.csv("VT-Rutland-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.rutland <- read.csv("VT-Rutland.csv",header = TRUE)
vt.rutland


# Merge the Dataset based on Dates.
merged.data.rl <- merge(x=vt.rutland[,c(1:22)],y=vt.rutland.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.rl,"VT-Rutland-Final.csv", row.names = FALSE)


































############################ Mapping the VT - Washington Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[9]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[9]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[9]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[9]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[9]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Washington",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[9]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Washington",
                                 Population = ""
)

vt.washington.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.washington.merged
write.csv(vt.washington.merged,"VT-Washington-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.washington.population <- read.csv("VT-Washington-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.washington <- read.csv("VT-Washington.csv",header = TRUE)
vt.washington


# Merge the Dataset based on Dates.
merged.data.wh <- merge(x=vt.washington[,c(1:22)],y=vt.washington.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.wh,"VT-Washington-Final.csv", row.names = FALSE)


































############################ Mapping the VT - Windsor Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
vt.population <- read.csv("VT-PopulationCounty.csv", header = TRUE)
vt.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
vt.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Windsor",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2011[10]))
)

vt.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Windsor",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2012[10]))
)

vt.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Windsor",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2013[10]))
)

vt.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Windsor",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2014[10]))
)

vt.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Windsor",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2015[10]))
)

vt.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Windsor",
                                 Population = as.numeric(gsub(",", "", vt.population$POP_ESTIMATE_2016[10]))
)

vt.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "VT", 
                                 County = "Windsor",
                                 Population = ""
)

vt.windsor.merged <- rbind(vt.population.2011,vt.population.2012,vt.population.2013,vt.population.2014,vt.population.2015,vt.population.2016,vt.population.2017)
vt.windsor.merged
write.csv(vt.windsor.merged,"VT-Windsor-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
vt.windsor.population <- read.csv("VT-Windsor-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
vt.windsor <- read.csv("VT-Windsor.csv",header = TRUE)
vt.windsor


# Merge the Dataset based on Dates.
merged.data.wd <- merge(x=vt.windsor[,c(1:22)],y=vt.windsor.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.wd,"VT-Windsor-Final.csv", row.names = FALSE)

































##################### Merging all the dataframes in New Hampshire ################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.ad,merged.data.bg,merged.data.cd,merged.data.ct,merged.data.fk,merged.data.lm,merged.data.os,merged.data.rl,merged.data.wh,merged.data.wd))
write.csv(df.merge,"VT.csv",row.names = FALSE)


