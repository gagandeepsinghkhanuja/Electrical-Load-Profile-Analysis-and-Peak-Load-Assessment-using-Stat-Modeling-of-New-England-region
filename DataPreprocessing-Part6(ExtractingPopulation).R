# Predicitive Modeling 
# Gagandeep Singh Khanuja 
# 0029971620
# IE - 590 

library(XLConnect)
library(dplyr)
setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Data Preprocessing - Part 6(Extracting population from Dataset)")

# Converting xls to csv format 
workbook <- loadWorkbook("PopulationEstimates.xls")
dataframe <- readWorksheet(workbook,sheet = 1, header = TRUE)
write.csv(dataframe,"PopulationEstimates-Draft.csv", row.names = FALSE)
newdataframe <- read.csv("PopulationEstimates-Draft.csv",skip=2,stringsAsFactors = F)
newdataframe <- newdataframe[-1,]
write.csv(newdataframe,"PopulationEstimates.csv", row.names = FALSE)


# Converting sheet 2 of variable descriptors to csv format 
worksheet.def <-loadWorkbook("PopulationEstimates.xls")
dataframe.def <- readWorksheet(worksheet.def, sheet = 2, header = TRUE)
dataframe.def[is.na(dataframe.def)] <- ""
write.csv(dataframe.def,"PopulationEstimates-VariableDescription.csv",row.names = FALSE)


# Extracting County Population of Connecticut and storiing it in a separate CSV file.
population.zone <- newdataframe
population.county.ct <- population.zone[population.zone$Area_Name %in% c("Fairfield County","Hartford County","Litchfield County","Middlesex County","New Haven County","New London County","Tolland County","Windham County"),]
population.in.connecticut <- population.county.ct
population.in.connecticut <- population.in.connecticut[population.in.connecticut$State == "CT", ]
names(population.in.connecticut)[names(population.in.connecticut) == "Area_Name"] <- "COUNTY"
population.in.connecticut
population.in.connecticut[1,3] = "Fairfield"
population.in.connecticut[2,3] = "Hartford"
population.in.connecticut[3,3] = "Litchfield"
population.in.connecticut[4,3] = "Middlesex"
population.in.connecticut[5,3] = "New Haven"
population.in.connecticut[6,3] = "New London"
population.in.connecticut[7,3] = "Tolland"
population.in.connecticut[8,3] = "Windham"

write.csv(population.in.connecticut,"CT-PopulationCounty.csv", row.names =  FALSE)


# Extracting County Population of New Hampshire and storiing it in a separate CSV file.
population.zone.nh <- newdataframe
population.county.nh <- population.zone.nh[population.zone.nh$Area_Name %in% c("Belknap County","Carroll County","Cheshire County","Coos County","Grafton County","Hillsborough County","Merrimack County","Rockingham County", "Strafford County", "Sullivan County"),]
population.in.newhampshire <- population.county.nh
population.in.newhampshire <- population.in.newhampshire[population.in.newhampshire$State == "NH", ]
names(population.in.newhampshire)[names(population.in.newhampshire) == "Area_Name"] <- "COUNTY"
population.in.newhampshire[1,3] = "Belknap"
population.in.newhampshire[2,3] = "Carroll"
population.in.newhampshire[3,3] = "Cheshire"
population.in.newhampshire[4,3] = "Coos"
population.in.newhampshire[5,3] = "Grafton"
population.in.newhampshire[6,3] = "Hillsborough"
population.in.newhampshire[7,3] = "Merrimack"
population.in.newhampshire[8,3] = "Rockingham"
population.in.newhampshire[9,3] = "Strafford"
population.in.newhampshire[10,3] = "Sullivan"

write.csv(population.in.newhampshire,"NH-PopulationCounty.csv", row.names =  FALSE)


# Extracting County Population of Maine and storiing it in a separate CSV file.
population.zone.mn <- newdataframe
population.county.mn <- population.zone.mn[population.zone.mn$Area_Name %in% c("Androscoggin County","Aroostook County","Cumberland County","Franklin County","Hancock County","Kennebec County", "Knox County", "Lincoln County","Oxford County","Penobscot County","Piscataquis County","Sagadahoc County","Somerset County","Waldo County","Washington County","York County"),]
population.in.maine <- population.county.mn
population.in.maine <- population.in.maine[population.in.maine$State == "ME", ]
names(population.in.maine)[names(population.in.maine) == "Area_Name"] <- "COUNTY"
population.in.maine[1,3] = "Androscoggin"
population.in.maine[2,3] = "Aroostook"
population.in.maine[3,3] = "Cumberland"
population.in.maine[4,3] = "Franklin"
population.in.maine[5,3] = "Hancock"
population.in.maine[6,3] = "Kennebec"
population.in.maine[7,3] = "Knox"
population.in.maine[8,3] = "Lincoln"
population.in.maine[9,3] = "Oxford"
population.in.maine[10,3] = "Penobscot"
population.in.maine[11,3] = "Piscataquis"
population.in.maine[12,3] = "Sagadahoc"
population.in.maine[13,3] = "Somerset"
population.in.maine[14,3] = "Waldo"
population.in.maine[15,3] = "Washington"
population.in.maine[16,3] = "York"
write.csv(population.in.maine,"ME-PopulationCounty.csv", row.names =  FALSE)


# Extracting County Population of Vermont and storiing it in a separate CSV file.
population.zone.vt <- newdataframe
population.county.vt <- population.zone.vt[population.zone.vt$Area_Name %in% c("Addison County","Bennington County","Caledonia County","Chittenden County","Essex County","Franklin County","Grand Isle County","Lamoille County","Orange County","Orleans County","Rutland County", "Washington County","Windham County", "Windsor County"),]
population.in.vermont <- population.county.vt
population.in.vermont <- population.in.vermont[population.in.vermont$State == "VT", ]
names(population.in.vermont)[names(population.in.vermont) == "Area_Name"] <- "COUNTY"
population.in.vermont[1,3]="Addison"
population.in.vermont[2,3]="Bennington"
population.in.vermont[3,3]="Caledonia"
population.in.vermont[4,3]="Chittenden"
population.in.vermont[5,3]="Essex"
population.in.vermont[6,3]="Franklin"
population.in.vermont[7,3]="Grand Isle"
population.in.vermont[8,3]="Lamoille"
population.in.vermont[9,3]="Orange"
population.in.vermont[10,3]="Orleans"
population.in.vermont[11,3]="Rutland"
population.in.vermont[12,3]="Washington"
population.in.vermont[13,3]="Windham"
population.in.vermont[14,3]="Windsor"
write.csv(population.in.vermont,"VT-PopulationCounty.csv", row.names =  FALSE)


# Extracting County Population of Rhode Island and storiing it in a separate CSV file.
population.zone.ri <- newdataframe
population.county.ri <- population.zone.ri[population.zone.ri$Area_Name %in% c("Bristol County","Kent County","Newport County","Providence County","Washington County"),]
population.in.rhodeisland <- population.county.ri
population.in.rhodeisland <- population.in.rhodeisland[population.in.rhodeisland$State == "RI", ]
names(population.in.rhodeisland)[names(population.in.rhodeisland) == "Area_Name"] <- "COUNTY"
population.in.rhodeisland[1,3]= "Bristol"
population.in.rhodeisland[2,3]= "Kent"
population.in.rhodeisland[3,3]= "Newport"
population.in.rhodeisland[4,3]= "Providence"
population.in.rhodeisland[5,3]= "Washington"
write.csv(population.in.rhodeisland,"RI-PopulationCounty.csv", row.names =  FALSE)


# Extracting County Population of Massachusetts and storiing it in a separate CSV file.
population.zone.ms <- newdataframe
population.county.ms <- population.zone.ms[population.zone.ms$Area_Name %in% c("Barnstable County","Berkshire County","Bristol County","Dukes County","Essex County","Franklin County","Hampden County","Hampshire County","Middlesex County","Nantucket County","Norfolk County","Plymouth County","Suffolk County","Worcester County"),]
population.in.massachusetts <- population.county.ms
population.in.massachusetts <- population.in.massachusetts[population.in.massachusetts$State == "MA", ]
names(population.in.massachusetts)[names(population.in.massachusetts) == "Area_Name"] <- "COUNTY"
population.in.massachusetts[1,3]= "Barnstable"
population.in.massachusetts[2,3]= "Berkshire"
population.in.massachusetts[3,3]= "Bristol"
population.in.massachusetts[4,3]= "Dukes"
population.in.massachusetts[5,3]= "Essex"
population.in.massachusetts[6,3]= "Franklin"
population.in.massachusetts[7,3]= "Hampden"
population.in.massachusetts[8,3]= "Hampshire"
population.in.massachusetts[9,3]= "Middlesex"
population.in.massachusetts[10,3]= "Nantucket"
population.in.massachusetts[11,3]= "Norfolk"
population.in.massachusetts[12,3]= "Plymouth"
population.in.massachusetts[13,3]= "Suffolk"
population.in.massachusetts[14,3]= "Worcester"

write.csv(population.in.massachusetts,"MA-PopulationCounty.csv", row.names =  FALSE)
