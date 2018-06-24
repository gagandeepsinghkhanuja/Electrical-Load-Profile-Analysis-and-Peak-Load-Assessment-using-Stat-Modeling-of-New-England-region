#setwd("C:/Users/dmaiasil/Documents/Purdue Projects/Spring 2018/Modeling/Project/datasets/FINAL")

#ct <- read.table("ct.csv", sep=",", stringsAsFactors = F, header = T)
#ma <- read.table("ma.csv", sep=",", stringsAsFactors = F, header = T)
#me <- read.table("me.csv", sep=",", stringsAsFactors = F, header = T)
#nh <- read.table("nh.csv", sep=",", stringsAsFactors = F, header = T)
#ri <- read.table("ri.csv", sep=",", stringsAsFactors = F, header = T)
vt <- read.table("VT.csv", sep=",", stringsAsFactors = F, header = T)

#ct$Date <- as.Date(ct$Date)
#ma$Date <- as.Date(ma$Date)
#me$Date <- as.Date(me$Date)
#nh$Date <- as.Date(nh$Date)
#ri$Date <- as.Date(ri$Date)
vt$Date <- as.Date(vt$Date)


library(ModelMetrics)
library(caret)
library(e1071)
library(LncFinder)


options(java.parameters = "-Xmx100g")
library(bartMachine)
set_bart_machine_num_cores(8)


#######vt#######

vt <- subset(vt, select = c(-1,-2,-4,-25,-24, -23))

#####SVM Parameters####
set.seed(9)

folds <- cut(seq(1,nrow(vt)),breaks=10,labels=FALSE)
rmse.test.svm <- vector("numeric", 10)
rmse.train.svm <- vector("numeric", 10)

rmse.kernel.train <- vector("numeric", 3)
rmse.kernel.test <- vector("numeric", 3)

inTrain <- createDataPartition(y = vt$Peak.Demand,
                               p = .85,            
                               list = FALSE)
train <- vt[inTrain,]
test <- vt[-inTrain,]

#choosing kernel 
kernel <- c("linear","radial","polynomial")

#radial best choice
for(j in 1:3){
  
  for(i in 1:10){
    
    testIndexes <- which(folds==i,arr.ind=TRUE)
    test <- vt[testIndexes, ]
    train <- vt[-testIndexes, ]
    
    model.svm <- svm(Peak.Demand ~., data = train, kernel = kernel[j])
    
    model.pred.svm <- predict(model.svm, train)
    model.pred.OS.svm <- predict(model.svm, test)
    
    rmse.train.svm[i] <- rmse(actual = train$Peak.Demand, predicted = model.pred.svm)
    rmse.test.svm[i] <- rmse(actual = test$Peak.Demand, predicted = model.pred.OS.svm)
    
    
  }
  
  rmse.kernel.train[j] <- mean(rmse.train.svm)
  rmse.kernel.test[j] <- mean(rmse.test.svm)
  
}

#model with best kernel
model.svm <- svm(Peak.Demand ~., data = train, kernel = "radial")

#C and gamma parameters
#does CV implicitly -> again, we do it explicitly once our parameters are chosen
svm.tune <- tune(svm, Peak.Demand~., data=train, kernel="radial", ranges=list(cost=10^(-1:1), gamma=2^(-1:1)), folds.num = 5)

save(list=ls(all=T),file='VT_SVM.RData')