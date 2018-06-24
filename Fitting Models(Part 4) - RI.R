#setwd("C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/FINAL")
setwd("H:/Desktop")

#ct <- read.table("ct.csv", sep=",", stringsAsFactors = F, header = T)
#ma <- read.table("ma.csv", sep=",", stringsAsFactors = F, header = T)
#me <- read.table("me.csv", sep=",", stringsAsFactors = F, header = T)
#nh <- read.table("nh.csv", sep=",", stringsAsFactors = F, header = T)
ri <- read.table("RI.csv", sep=",", stringsAsFactors = F, header = T)
#vt <- read.table("vt.csv", sep=",", stringsAsFactors = F, header = T)

#ct$Date <- as.Date(ct$Date)
#ma$Date <- as.Date(ma$Date)
#me$Date <- as.Date(me$Date)
#nh$Date <- as.Date(nh$Date)
ri$Date <- as.Date(ri$Date)
#vt$Date <- as.Date(vt$Date)


library(ModelMetrics)
library(caret)
library(e1071)
library(LncFinder)

load("RI_SVM.RData")

options(java.parameters = "-Xmx100g")
library(bartMachine)
set_bart_machine_num_cores(8)


#######ri#######

ri <- subset(ri, select = c(-1,-2,-4,-25,-24, -23))

print(head(ri))

#####SVM Parameters####
set.seed(9)

folds <- cut(seq(1,nrow(ri)),breaks=10,labels=FALSE)
rmse.test.svm <- vector("numeric", 10)
rmse.train.svm <- vector("numeric", 10)

rmse.kernel.train <- vector("numeric", 3)
rmse.kernel.test <- vector("numeric", 3)

inTrain <- createDataPartition(y = ri$Peak.Demand,
                               p = .85,            
                               list = FALSE)
train <- ri[inTrain,]
test <- ri[-inTrain,]



#model with best kernel
model.svm <- svm(Peak.Demand ~., data = train, kernel = "radial")

#C and gamma parameters
#does CV implicitly -> again, we do it explicitly once our parameters are chosen
svm.tune <- tune(svm, Peak.Demand~., data=train, kernel="radial", ranges=list(cost=10^(-1:1), gamma=2^(-1:1)), folds.num = 5)
#cost = 1, gamma = 0.5 (same as CT - might as well always use this)

save(list=ls(all=T),file='RI_SVM.RData')
