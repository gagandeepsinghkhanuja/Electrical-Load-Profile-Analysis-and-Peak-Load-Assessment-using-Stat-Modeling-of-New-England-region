# Predicitve Modeling
# Gagandeep Singh Khanuja
# IE - 590

# Here I will be finding the maximum values from the given datasets after fixed interval of time 
# of 24 hours. 
library(dplyr)
library(data.table)
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 3(Extracting maximum values from every dataset)")

################# Finding the maximum value in the Connecticut Dataset #################
df.connecticut <- read.csv("CT-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
#df.connecticut
peak_demand_connecticut <- df.connecticut %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_connecticut)[names(peak_demand_connecticut) == "as.character(Date)"] <- "Date"
names(peak_demand_connecticut)[names(peak_demand_connecticut) == "Peak_Demand"] <- "Peak Demand"
peak_demand_connecticut
write.csv(peak_demand_connecticut,"CT-Peak-Demand.csv", row.names = FALSE)


################# Finding the maximum value in the Maine Dataset #################
df.maine <- read.csv("ME-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
df.maine
peak_demand_maine <- df.maine %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_maine)[names(peak_demand_maine) == "as.character(Date)"] <- "Date"
names(peak_demand_maine)[names(peak_demand_maine) == "Peak_Demand"] <- "Peak Demand"
peak_demand_maine
write.csv(peak_demand_maine,"ME-Peak-Demand.csv", row.names = FALSE)


################# Finding the maximum value in the New Hampshire Dataset #################
df.nh <- read.csv("NH-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
df.nh
peak_demand_nh <- df.nh %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_nh)[names(peak_demand_nh) == "as.character(Date)"] <- "Date"
names(peak_demand_nh)[names(peak_demand_nh) == "Peak_Demand"] <- "Peak Demand"
peak_demand_nh
write.csv(peak_demand_nh,"NH-Peak-Demand.csv", row.names = FALSE)


################# Finding the maximum value in the Rhode Island Dataset #################
df.ri <- read.csv("RI-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
df.ri
peak_demand_ri <- df.ri %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_ri)[names(peak_demand_ri) == "as.character(Date)"] <- "Date"
names(peak_demand_ri)[names(peak_demand_ri) == "Peak_Demand"] <- "Peak Demand"
peak_demand_ri$STATE <- "RI"
peak_demand_ri
write.csv(peak_demand_ri,"RI-Peak-Demand.csv", row.names = FALSE)


################# Finding the maximum value in the SEMASS-Rhode Island Dataset #################
df.semass <- read.csv("SEMASS-RI-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
df.semass
peak_demand_semass <- df.semass %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_semass)[names(peak_demand_semass) == "as.character(Date)"] <- "Date"
names(peak_demand_semass)[names(peak_demand_semass) == "Peak_Demand"] <- "Peak Demand"
peak_demand_semass
write.csv(peak_demand_semass,"SEMASS-Peak-Demand.csv", row.names = FALSE)

################# Finding the maximum value in the Vermont Dataset #################
df.vt <- read.csv("VT-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
df.vt
peak_demand_vt <- df.vt %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_vt)[names(peak_demand_vt) == "as.character(Date)"] <- "Date"
names(peak_demand_vt)[names(peak_demand_vt) == "Peak_Demand"] <- "Peak Demand"
peak_demand_vt
write.csv(peak_demand_vt,"VT-Peak-Demand.csv", row.names = FALSE)


################# Finding the maximum value in the Masachusetts Dataset #################
df.wcmass <- read.csv("WCMASS-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
df.wcmass
peak_demand_wcmass <- df.wcmass %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_wcmass)[names(peak_demand_wcmass) == "as.character(Date)"] <- "Date"
names(peak_demand_wcmass)[names(peak_demand_wcmass) == "Peak_Demand"] <- "Peak Demand"
peak_demand_wcmass
write.csv(peak_demand_wcmass,"WCMASS-Peak-Demand.csv", row.names = FALSE)


################# Finding the maximum value in the NEMASSBOST Masachusetts Dataset #################
df.nemass <- read.csv("NEMASSBOST-2011-2017-Hourly-Data.csv", sep = ",", header = TRUE)
df.nemass
peak_demand_nemass <- df.nemass %>% group_by(as.character(Date)) %>% summarise(Peak_Demand = max(as.numeric(DEMAND)))
names(peak_demand_nemass)[names(peak_demand_nemass) == "as.character(Date)"] <- "Date"
names(peak_demand_nemass)[names(peak_demand_nemass) == "Peak_Demand"] <- "Peak Demand"
peak_demand_nemass
write.csv(peak_demand_nemass,"NEMASS-Peak-Demand.csv", row.names = FALSE)
