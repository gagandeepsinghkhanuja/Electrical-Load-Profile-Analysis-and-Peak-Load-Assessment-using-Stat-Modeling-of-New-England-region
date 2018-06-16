setwd("H:/Desktop")
load("NH_bart.RData")


nh <- read.table("NH.csv", sep=",", stringsAsFactors = F, header = T)
#vt <- read.table("vt.csv", sep=",", stringsAsFactors = F, header = T)

#ct$Date <- as.Date(ct$Date)
#ma$Date <- as.Date(ma$Date)
#me$Date <- as.Date(me$Date)
nh$Date <- as.Date(nh$Date)
#ma$Date <- as.Date(ma$Date)
#vt$Date <- as.Date(vt$Date)

#load("RI_SVM.RData")

library(ModelMetrics)
library(caret)


options(java.parameters = "-Xmx200g")
library(bartMachine)
set_bart_machine_num_cores(8)


nh <- subset(nh, select = c(-1,-2,-4,-25,-24, -23))

######BART Parameters #####


inTrain <- createDataPartition(y = nh$Peak.Demand,
                               p = .85,            
                               list = FALSE)
train <- nh[inTrain,]
test <- nh[-inTrain,]

bart_machine_cv <- bartMachineCV(train[,-1], train$Peak.Demand, serialize = T)

vars <- var_selection_by_permute_cv(bart_machine_cv, num_permute_samples = 10)

save(list=ls(all=T),file='NH_bart.RData')