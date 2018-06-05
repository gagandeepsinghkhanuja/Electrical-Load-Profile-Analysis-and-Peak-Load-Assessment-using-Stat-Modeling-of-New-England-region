#################################################
############## Peak Load Project   ############## 
############## Debora Maia Silva   ##############
############## dmaiasil@purdue.edu ##############
#################################################

library(dplyr)

as.numeric.factor <- function(x) {as.numeric(levels(x))[x]}

ne_climate <- function (data, state, county){
  
  data$STATE <- state
  data$COUNTY <- county
  
  data <- subset(data, select = c("STATE", "COUNTY", "STATION_NAME", "DATE", "HOURLYDRYBULBTEMPC",
                                      "HOURLYWETBULBTEMPC", "HOURLYDewPointTempC", "HOURLYRelativeHumidity", 
                                      "HOURLYWindSpeed", "HOURLYStationPressure"))
  num <- c(5,7,10)
  data <- mutate_each(data, funs(as.numeric.factor), num)
  
  data$DATE <- as.character(data$DATE)
  
  data$DATE <- as.Date(data$DATE, format = "%d-%m-%y")
  
  temp <- do.call(data.frame, aggregate(cbind(HOURLYDRYBULBTEMPC,HOURLYWETBULBTEMPC,HOURLYDewPointTempC, 
                                              HOURLYRelativeHumidity,HOURLYWindSpeed,HOURLYStationPressure ) ~ DATE, data, 
                                        FUN = function(x) c(Max = max(x), Min = min(x), avg = round(mean(x),2))))
  
  
  temp$YEAR <- format(as.Date(temp$DATE, format="%Y-%m-%d"),"%Y")
  
  temp <- temp %>%
    filter(YEAR != 2018)
  temp$STATION_NAME <- data$STATION_NAME[1]
  temp$STATE <- data$STATE[1]
  temp$COUNTY <- data$COUNTY[1]
  temp$DATE <- as.character(temp$DATE)
  
  temp <- temp[c(21,22,23,20,1,2:19)]
  
  return(temp)
}


extract_cli <- function(data, ncount){
  
  final_state <- data.frame()
  
  for (i in 1:ncount){
    
    STATION_NAME <-  as.character(data[[((i-1)*23)+1]])
    STATE <- data[[((i-1)*23)+2]]
    COUNTY <- data[[((i-1)*23)+3]]
    YEAR <- data[[((i-1)*23)+4]]
    DATE <- data[[((i-1)*23)+5]]
    DryBulb.max <-  data[[((i-1)*23)+6]]
    DryBulb.min <-  data[[((i-1)*23)+7]]
    DryBulb.avg <-  data[[((i-1)*23)+8]]
    WetBulb.max <-  data[[((i-1)*23)+9]]
    WetBulb.min <-  data[[((i-1)*23)+10]]
    WetBulb.avg <-  data[[((i-1)*23)+11]]
    DewPoint.max <-  data[[((i-1)*23)+12]]
    DewPoint.min <-  data[[((i-1)*23)+13]]
    DewPoint.avg <-  data[[((i-1)*23)+14]]
    RelHumi.max <-  data[[((i-1)*23)+15]]
    RelHumi.min <-  data[[((i-1)*23)+16]]
    RelHumi.avg <-  data[[((i-1)*23)+17]]
    WindSpeed.max <-  data[[((i-1)*23)+18]]
    WindSpeed.min <-  data[[((i-1)*23)+19]]
    WindSpeed.avg <-  data[[((i-1)*23)+20]]
    StPress.max <-  data[[((i-1)*23)+21]]
    StPress.min <-  data[[((i-1)*23)+22]]
    StPress.avg <-  data[[((i-1)*23)+23]]
    
    county <- cbind(STATION_NAME,STATE, COUNTY, YEAR, DATE, DryBulb.max, DryBulb.min, DryBulb.avg, WetBulb.max, WetBulb.min,
                    WetBulb.avg, DewPoint.max, DewPoint.min, DewPoint.avg, RelHumi.max, RelHumi.min, RelHumi.avg, WindSpeed.max, 
                    WindSpeed.min, WindSpeed.avg, StPress.max, StPress.min, StPress.avg)
    
    final_state <- rbind(final_state,county)
  }
  
  return(final_state)
  
}


#### CT
ct_path <- 'C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/CT'
ct_files <- list.files(path = ct_path, pattern = '*.csv', full.names = TRUE)

ct_counties <- c("Middlesex", "New Haven", "New London", "Windham", "Fairfield", "Hartford")

ct_climate <- mapply(function(files, state, county){
  dat <- read.csv(files)
  dat <- ne_climate(dat,state, county)
  return(dat)
}, ct_files, "CT", ct_counties)

connecticut <- extract_cli(ct_climate,length(ct_counties))
setwd('C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/CT')
write.csv(connecticut, file = "CT.csv",row.names=FALSE)


#### ME
me_path <- 'C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/ME'
me_files <- list.files(path = me_path, pattern = '*.csv', full.names = TRUE)

me_counties <- c("Androscoggin", "Aroostook", "Cumberland", "Hancock", "Kennebec", "Knox", "Lincoln", "Oxford", "Penobscot", "Piscataquis", "York")

me_climate <- mapply(function(files, state, county){
  dat <- read.csv(files)
  dat <- ne_climate(dat,state, county)
  return(dat)
}, me_files, "ME", me_counties)

maine <- extract_cli(me_climate,length(me_counties))
setwd('C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/ME')
write.csv(maine, file = "ME.csv",row.names=FALSE)


#### MA
ma_path <- 'C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/MA'
ma_files <- list.files(path = ma_path, pattern = '*.csv', full.names = TRUE)

ma_counties <- c("Barnstable", "Berkshire", "Bristol", "Dukes", "Essex", "Franklin",
                 "Hampden", "Middlesex", "Nantucket", "Plymouth", "Suffolk", "Worcester", "Norfolk")

ma_climate <- mapply(function(files, state, county){
  dat <- read.csv(files)
  dat <- ne_climate(dat,state, county)
  return(dat)
}, ma_files, "MA", ma_counties)

massachusetts <- extract_cli(ma_climate,length(ma_counties))
setwd('C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/MA')
write.csv(massachusetts, file = "MA.csv",row.names=FALSE)


#teste error caledonia new download 
#mapply(function(files){
# dat <- read.csv(files)
#  dat <- nrow(dat)
# return(dat)
#}, vt_files)
#ne_climate(read.csv(vt_files[10]),"VT", "test")


#### NH
nh_path <- 'C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/NH'
nh_files <- list.files(path = nh_path, pattern = '*.csv', full.names = TRUE)

nh_counties <- c("Belknap", "Cheshire", "Coos", "Grafton", "Hillsborough", "Merrimack",
                 "Strafford", "Rockingham")

nh_climate <- mapply(function(files, state, county){
  dat <- read.csv(files)
  dat <- ne_climate(dat,state, county)
  return(dat)
}, nh_files, "NH", nh_counties)

newhampshire <- extract_cli(nh_climate,length(nh_counties))
setwd('C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/NH')
write.csv(newhampshire, file = "NH.csv",row.names=FALSE)


#### VT
vt_path <- 'C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/VT'
vt_files <- list.files(path = vt_path, pattern = '*.csv', full.names = TRUE)

vt_counties <- c("Addison", "Bennington", "Chittenden", "Lamoille", "Orleans",
                 "Rutland", "Washington", "Windsor", "Franklin", "Caledonia")

vt_climate <- mapply(function(files, state, county){
  dat <- read.csv(files)
  dat <- ne_climate(dat,state, county)
  return(dat)
}, vt_files, "VT", vt_counties)

vermont <- extract_cli(vt_climate,length(vt_counties))
setwd('C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/VT')
write.csv(vermont, file = "VT.csv",row.names=FALSE)


#### RI
ri_path <- 'C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/RI'
ri_files <- list.files(path = ri_path, pattern = '*.csv', full.names = TRUE)

ri_counties <- c("Kent", "Newport", "Providence", "Washington")

ri_climate <- mapply(function(files, state, county){
  dat <- read.csv(files)
  dat <- ne_climate(dat,state, county)
  return(dat)
}, ri_files, "RI", ri_counties)

rhodeisland <- extract_cli(nh_climate,length(ri_counties))
setwd('C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/climate data/RI')
write.csv(rhodeisland, file = "RI.csv",row.names=FALSE)

#rm(test, temp)
