setwd("H:/Desktop")

ri <- read.table("RI.csv", sep=",", stringsAsFactors = F, header = T)
#vt <- read.table("vt.csv", sep=",", stringsAsFactors = F, header = T)

#ct$Date <- as.Date(ct$Date)
#ma$Date <- as.Date(ma$Date)
#me$Date <- as.Date(me$Date)
#nh$Date <- as.Date(nh$Date)
ri$Date <- as.Date(ri$Date)
#vt$Date <- as.Date(vt$Date)

ri <- subset(ri, select = c(-1,-2,-4,-25,-24, -23))

load("RI_bart.RData")

library(ModelMetrics)
library(caret)
library(e1071)
library(LncFinder)


options(java.parameters = "-Xmx50g")
library(bartMachine)
set_bart_machine_num_cores(8)

######BART Parameters #####


inTrain <- createDataPartition(y = ri$Peak.Demand,
                               p = .85,            
                               list = FALSE)
train <- ri[inTrain,]
test <- ri[-inTrain,]

bart_machine_cv <- bartMachineCV(train[,-1], train$Peak.Demand, serialize = T)

vars <- var_selection_by_permute_cv(bart_machine_cv, num_permute_samples = 10)

save(list=ls(all=T),file='RI_bart.RData')

#k nu    q num_trees 
#5 10 0.75       200