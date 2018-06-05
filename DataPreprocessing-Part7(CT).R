# Predicitive Modeling
# Gagandeep Singh Khanuja
# IE - 590
# 0029971620

#Install the packages dependencies.
#install.packages("chron")
library(chron)

#Set the working directory to the path of your choice. 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part7(Merging Population with Dataset)/CT")


############################ Mapping the CT - Fairfield Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ct.population <- read.csv("CT-PopulationCounty.csv", header = TRUE)
ct.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ct.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Fairfield",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2011[1]))
)

ct.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Fairfield",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2012[1]))
)

ct.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Fairfield",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2013[1]))
)

ct.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Fairfield",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2014[1]))
)

ct.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Fairfield",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2015[1]))
)

ct.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Fairfield",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2016[1]))
)

ct.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Fairfield",
                                 Population = ""
)

ct.fairfield.merged <- rbind(ct.population.2011,ct.population.2012,ct.population.2013,ct.population.2014,ct.population.2015,ct.population.2016,ct.population.2017)
ct.fairfield.merged
write.csv(ct.fairfield.merged,"CT-Fairfield-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ct.fairfield.population <- read.csv("CT-Fairfield-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ct.fairfield <- read.csv("CT-Fairfield.csv",header = TRUE)
ct.fairfield


# Merge the Dataset based on Dates.
merged.data.fd <- merge(x=ct.fairfield[,c(1:22)],y=ct.fairfield.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.fd,"CT-Fairfield-Final.csv", row.names = FALSE)




















############################ Mapping the CT - Hartford Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ct.population <- read.csv("CT-PopulationCounty.csv", header = TRUE)
ct.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ct.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Hartford",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2011[2]))
)

ct.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Hartford",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2012[2]))
)

ct.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Hartford",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2013[2]))
)

ct.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Hartford",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2014[2]))
)

ct.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Hartford",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2015[2]))
)

ct.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Hartford",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2016[2]))
)

ct.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Hartford",
                                 Population = ""
)

ct.hartford.merged <- rbind(ct.population.2011,ct.population.2012,ct.population.2013,ct.population.2014,ct.population.2015,ct.population.2016,ct.population.2017)
ct.hartford.merged
write.csv(ct.hartford.merged,"CT-Hartford-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ct.hartford.population <- read.csv("CT-Hartford-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ct.hartford <- read.csv("CT-Hartford.csv",header = TRUE)
ct.hartford


# Merge the Dataset based on Dates.
merged.data.hf <- merge(x=ct.hartford[,c(1:22)],y=ct.hartford.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.hf,"CT-Hartford-Final.csv", row.names = FALSE)


































############################ Mapping the CT - Middlesex Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ct.population <- read.csv("CT-PopulationCounty.csv", header = TRUE)
ct.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ct.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2011[4]))
)

ct.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2012[4]))
)

ct.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2013[4]))
)

ct.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2014[4]))
)

ct.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2015[4]))
)

ct.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Middlesex",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2016[4]))
)

ct.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Middlesex",
                                 Population = ""
)

ct.middlesex.merged <- rbind(ct.population.2011,ct.population.2012,ct.population.2013,ct.population.2014,ct.population.2015,ct.population.2016,ct.population.2017)
ct.middlesex.merged
write.csv(ct.middlesex.merged,"CT-Middlesex-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ct.middlesex.population <- read.csv("CT-Middlesex-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ct.middlesex <- read.csv("CT-Middlesex.csv",header = TRUE)
ct.middlesex


# Merge the Dataset based on Dates.
merged.data.mx <- merge(x=ct.middlesex[,c(1:22)],y=ct.middlesex.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.mx,"CT-Middlesex-Final.csv", row.names = FALSE)


































############################ Mapping the CT - New Haven Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ct.population <- read.csv("CT-PopulationCounty.csv", header = TRUE)
ct.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ct.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "New Haven",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2011[5]))
)

ct.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "New Haven",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2012[5]))
)

ct.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "New Haven",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2013[5]))
)

ct.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "New Haven",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2014[5]))
)

ct.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "New Haven",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2015[5]))
)

ct.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "New Haven",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2016[5]))
)

ct.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "New Haven",
                                 Population = ""
)

ct.newhaven.merged <- rbind(ct.population.2011,ct.population.2012,ct.population.2013,ct.population.2014,ct.population.2015,ct.population.2016,ct.population.2017)
ct.newhaven.merged
write.csv(ct.newhaven.merged,"CT-NewHaven-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ct.newhaven.population <- read.csv("CT-NewHaven-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ct.newhaven <- read.csv("CT-NewHaven.csv",header = TRUE)
ct.newhaven


# Merge the Dataset based on Dates.
merged.data.nh <- merge(x=ct.newhaven[,c(1:22)],y=ct.newhaven.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.nh,"CT-NewHaven-Final.csv", row.names = FALSE)


































############################ Mapping the CT - Windham Population with Dates ############################ 
# Read the CSV file and import it to a dataframe.
ct.population <- read.csv("CT-PopulationCounty.csv", header = TRUE)
ct.population


# Create a sequence of dates from 01-01-2011 to 12-31-2017
ct.population.2011 <- data.frame(Date = seq(as.Date("2011-01-01"),as.Date("2011-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Windham",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2011[8]))
)

ct.population.2012 <- data.frame(Date = seq(as.Date("2012-01-01"),as.Date("2012-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Windham",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2012[8]))
)

ct.population.2013 <- data.frame(Date = seq(as.Date("2013-01-01"),as.Date("2013-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Windham",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2013[8]))
)

ct.population.2014 <- data.frame(Date = seq(as.Date("2014-01-01"),as.Date("2014-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Windham",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2014[8]))
)

ct.population.2015 <- data.frame(Date = seq(as.Date("2015-01-01"),as.Date("2015-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Windham",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2015[8]))
)

ct.population.2016 <- data.frame(Date = seq(as.Date("2016-01-01"),as.Date("2016-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Windham",
                                 Population = as.numeric(gsub(",", "", ct.population$POP_ESTIMATE_2016[8]))
)

ct.population.2017 <- data.frame(Date = seq(as.Date("2017-01-01"),as.Date("2017-12-31"), by = "days"),
                                 State = "CT", 
                                 County = "Windham",
                                 Population = ""
)

ct.windham.merged <- rbind(ct.population.2011,ct.population.2012,ct.population.2013,ct.population.2014,ct.population.2015,ct.population.2016,ct.population.2017)
ct.windham.merged
write.csv(ct.windham.merged,"CT-Windham-Population.csv", row.names = FALSE)


# Reading the csv that was generated in the previous step.
ct.windham.population <- read.csv("CT-Windham-Population.csv",header = TRUE)


# Reading the csv that contains all the parameters
ct.windham <- read.csv("CT-Windham.csv",header = TRUE)
ct.windham


# Merge the Dataset based on Dates.
merged.data.wd <- merge(x=ct.windham[,c(1:22)],y=ct.windham.population[,c(1,4)],by.x="Date",by.y="Date")
write.csv(merged.data.wd,"CT-Windham-Final.csv", row.names = FALSE)


































##################### Merging all the dataframes in Connecticut ##################### 
df.merge <- Reduce(function(x, y) merge(x, y, all=TRUE), list(merged.data.fd,merged.data.hf,merged.data.mx,merged.data.nh,merged.data.wd))
write.csv(df.merge,"CT.csv",row.names = FALSE)



