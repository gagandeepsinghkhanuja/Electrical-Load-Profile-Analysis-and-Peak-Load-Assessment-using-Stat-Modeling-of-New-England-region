# Predictive Modeling 
# Gagandeep Singh, Yash Kothari, Debora
# IE - 590 
# Project

library(dplyr)

################################ Merging the Dataset of Connecticut from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Connecticut")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Connecticut/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 
file_list
# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
  {
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
  }

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-CT.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-CT.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-CT.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-CT.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-CT.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-CT.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-CT.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-CT.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-CT.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-CT.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-CT.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-CT.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-CT.csv`)== names(`2011-Hourly-Data-CT.csv`)
names(`2017-Hourly-Data-CT.csv`)== names(`2011-Hourly-Data-CT.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file. 
merged_dataset <- rbind(`2011-Hourly-Data-CT.csv`,`2012-Hourly-Data-CT.csv`,`2013-Hourly-Data-CT.csv`,`2014-Hourly-Data-CT.csv`,`2015-Hourly-Data-CT.csv`,`2016-Hourly-Data-CT.csv`,`2017-Hourly-Data-CT.csv`)
merged_dataset$DryBulb <- NULL
merged_dataset$DewPnt <- NULL
write.csv(merged_dataset, file = "CT-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")

################################ Merging the Dataset of Maine from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Maine")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Maine/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
{
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
}

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-ME.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-ME.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-ME.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-ME.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-ME.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-ME.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-ME.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-ME.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-ME.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-ME.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-ME.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-ME.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-ME.csv`)== names(`2011-Hourly-Data-ME.csv`)
names(`2017-Hourly-Data-ME.csv`)== names(`2011-Hourly-Data-ME.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file. 
merged_dataset <- rbind(`2011-Hourly-Data-ME.csv`,`2012-Hourly-Data-ME.csv`,`2013-Hourly-Data-ME.csv`,`2014-Hourly-Data-ME.csv`,`2015-Hourly-Data-ME.csv`,`2016-Hourly-Data-ME.csv`,`2017-Hourly-Data-ME.csv`)
merged_dataset$DryBulb <- NULL
merged_dataset$DewPnt <- NULL
write.csv(merged_dataset, file = "ME-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")

################################ Merging the Dataset of Massachusetts from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Massachusetts")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Massachusetts/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
{
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
}

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-WCMASS.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-WCMASS.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-WCMASS.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-WCMASS.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-WCMASS.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-WCMASS.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-WCMASS.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-WCMASS.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-WCMASS.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-WCMASS.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-WCMASS.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-WCMASS.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-WCMASS.csv`)== names(`2011-Hourly-Data-WCMASS.csv`)
names(`2017-Hourly-Data-WCMASS.csv`)== names(`2011-Hourly-Data-WCMASS.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file. 
merged_dataset <- rbind(`2011-Hourly-Data-WCMASS.csv`,`2012-Hourly-Data-WCMASS.csv`,`2013-Hourly-Data-WCMASS.csv`,`2014-Hourly-Data-WCMASS.csv`,`2015-Hourly-Data-WCMASS.csv`,`2016-Hourly-Data-WCMASS.csv`,`2017-Hourly-Data-WCMASS.csv`)
merged_dataset$DryBulb <- NULL
merged_dataset$DewPnt <- NULL
write.csv(merged_dataset, file = "WCMASS-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")

################################ Merging the Dataset of Massachusetts-NEMASS from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Massachsetts-NEMASS")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Massachsetts-NEMASS/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
{
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
}

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-NEMASSBOST.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-NEMASSBOST.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-NEMASSBOST.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-NEMASSBOST.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-NEMASSBOST.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-NEMASSBOST.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-NEMASSBOST.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-NEMASSBOST.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-NEMASSBOST.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-NEMASSBOST.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-NEMASSBOST.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-NEMASSBOST.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-NEMASSBOST.csv`)== names(`2011-Hourly-Data-NEMASSBOST.csv`)
names(`2017-Hourly-Data-NEMASSBOST.csv`)== names(`2011-Hourly-Data-NEMASSBOST.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file. 
merged_dataset <- rbind(`2011-Hourly-Data-NEMASSBOST.csv`,`2012-Hourly-Data-NEMASSBOST.csv`,`2013-Hourly-Data-NEMASSBOST.csv`,`2014-Hourly-Data-NEMASSBOST.csv`,`2015-Hourly-Data-NEMASSBOST.csv`,`2016-Hourly-Data-NEMASSBOST.csv`,`2017-Hourly-Data-NEMASSBOST.csv`)
merged_dataset$DryBulb <- NULL
merged_dataset$DewPnt <- NULL
write.csv(merged_dataset, file = "NEMASSBOST-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")

################################ Merging the Dataset of New Hampshire from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/New Hampshire")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/New Hampshire/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
{
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
}

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-NH.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-NH.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-NH.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-NH.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-NH.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-NH.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-NH.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-NH.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-NH.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-NH.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-NH.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-NH.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-NH.csv`)== names(`2011-Hourly-Data-NH.csv`)
names(`2017-Hourly-Data-NH.csv`)== names(`2011-Hourly-Data-NH.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file. 
merged_dataset <- rbind(`2011-Hourly-Data-NH.csv`,`2012-Hourly-Data-NH.csv`,`2013-Hourly-Data-NH.csv`,`2014-Hourly-Data-NH.csv`,`2015-Hourly-Data-NH.csv`,`2016-Hourly-Data-NH.csv`,`2017-Hourly-Data-NH.csv`)
merged_dataset$DryBulb <- NULL
merged_dataset$DewPnt <- NULL
write.csv(merged_dataset, file = "NH-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")

################################ Merging the Dataset of Rhode Island from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Rhode Island")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Rhode Island/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
{
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
}

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-RI.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-RI.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-RI.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-RI.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-RI.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-RI.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-RI.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-RI.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-RI.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-RI.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-RI.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-RI.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-RI.csv`)== names(`2011-Hourly-Data-RI.csv`)
names(`2017-Hourly-Data-RI.csv`)== names(`2011-Hourly-Data-RI.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file. 
merged_dataset <- rbind(`2011-Hourly-Data-RI.csv`,`2012-Hourly-Data-RI.csv`,`2013-Hourly-Data-RI.csv`,`2014-Hourly-Data-RI.csv`,`2015-Hourly-Data-RI.csv`,`2016-Hourly-Data-RI.csv`,`2017-Hourly-Data-RI.csv`)
merged_dataset$DryBulb <- NULL
merged_dataset$DewPnt <- NULL
write.csv(merged_dataset, file = "RI-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")


################################ Merging the Dataset of Rhode Island-SEMASS from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Rhode Island-SEMASS")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Rhode Island-SEMASS/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
{
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
}

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-SEMASS.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-SEMASS.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-SEMASS.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-SEMASS.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-SEMASS.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-SEMASS.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-SEMASS.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-SEMASS.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-SEMASS.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-SEMASS.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-SEMASS.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-SEMASS.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-SEMASS.csv`)== names(`2011-Hourly-Data-SEMASS.csv`)
names(`2017-Hourly-Data-SEMASS.csv`)== names(`2011-Hourly-Data-SEMASS.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file. 
merged_dataset <- rbind(`2011-Hourly-Data-SEMASS.csv`,`2012-Hourly-Data-SEMASS.csv`,`2013-Hourly-Data-SEMASS.csv`,`2014-Hourly-Data-SEMASS.csv`,`2015-Hourly-Data-SEMASS.csv`,`2016-Hourly-Data-SEMASS.csv`,`2017-Hourly-Data-SEMASS.csv`)
merged_dataset$DryBulb <- NULL
merged_dataset$DewPnt <- NULL
write.csv(merged_dataset, file = "SEMASS-RI-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")


################################ Merging the Dataset of Vermont from 2011 to 2017 ################################ 
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Vermont")
folder ="E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 2(Merging all the csv file to one file)/Vermont/"
# create list of all .csv files in folder
file_list <- list.files(path=folder, pattern="*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for(i in 1:length(file_list))
{
  assign(file_list[i],read.csv(paste(folder, file_list[i], sep='')))
}

# Since there is a mismatch in the format of the header, the name of the header in file 2016 needs to be changed first.
names(`2016-Hourly-Data-VT.csv`)[2]=c("Hour")
names(`2016-Hourly-Data-VT.csv`)[3]=c("DA_DEMD")
names(`2016-Hourly-Data-VT.csv`)[4]=c("DEMAND")
names(`2016-Hourly-Data-VT.csv`)[5]=c("DA_LMP")
names(`2016-Hourly-Data-VT.csv`)[13]=c("DryBulb")
names(`2016-Hourly-Data-VT.csv`)[14]=c("DewPnt")

# Since there is a mismatch in the format of the header, the name of the header in file 2017 need to be changed first.
names(`2017-Hourly-Data-VT.csv`)[2]=c("Hour")
names(`2017-Hourly-Data-VT.csv`)[3]=c("DA_DEMD")
names(`2017-Hourly-Data-VT.csv`)[4]=c("DEMAND")
names(`2017-Hourly-Data-VT.csv`)[5]=c("DA_LMP")
names(`2017-Hourly-Data-VT.csv`)[13]=c("DryBulb")
names(`2017-Hourly-Data-VT.csv`)[14]=c("DewPnt")

# Testing whether the header names are same or not 
names(`2016-Hourly-Data-VT.csv`)== names(`2011-Hourly-Data-VT.csv`)
names(`2017-Hourly-Data-VT.csv`)== names(`2011-Hourly-Data-VT.csv`)

# Merge the datasets from 2011 to 2017 in one CSV file.

merged_dataset <- rbind(`2011-Hourly-Data-VT.csv`,`2012-Hourly-Data-VT.csv`,`2013-Hourly-Data-VT.csv`,`2014-Hourly-Data-VT.csv`,`2015-Hourly-Data-VT.csv`,`2016-Hourly-Data-VT.csv`,`2017-Hourly-Data-VT.csv`)
merged_dataset
write.csv(merged_dataset, file = "VT-2011-2017-Hourly-Data.csv",row.names=FALSE, na="")


  