library(ModelMetrics)
library(glmnet)
library(rpart)
library(rpart.plot)
library(randomForest)
library(ModelMetrics)
library(caret)
library(e1071)
library(bartMachine)
library(gam)
library(mda)
library(earth)
library(rminer)
library(psych)
library(caTools)

setwd("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/Final Codes")
ma <- read.table("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Final Project/final Dataset/MA.csv", sep = ",", header = T, stringsAsFactors = F)

final.df <- ma[,-c(1,2,4)]

################################ Parameter Selection ################################ 
################################ Model 1 - Decision Trees ################################ 


set.seed(9)
rmse.test.DT <- vector("numeric", 10)
rmse.train.DT <- vector("numeric", 10)

folds <- cut(seq(1,nrow(final.df)),breaks=10,labels=FALSE)
for(i in 1:10)
{
  testIndexes <- which(folds==i,arr.ind=TRUE)
  test <- final.df[testIndexes, ]
  train <- final.df[-testIndexes, ]
  
  
  decision.tree.model<-rpart(Peak.Demand ~ .,data=train)
  
  # Making Predictions
  decision.tree.pred<-predict(decision.tree.model,newdata=train)
  decision.tree.pred.OS<-predict(decision.tree.model,newdata=test)
  
  rmse.train.DT[i]<-rmse(actual = train$Peak.Demand,predicted = decision.tree.pred)
  rmse.test.DT[i]<-rmse(actual = test$Peak.Demand,predicted = decision.tree.pred.OS)
  
  plot(decision.tree.pred.OS, test$Peak.Demand, xlab = "predicted dt", ylab = "actual.test", main=c(i, "test"))
  abline(a=0,b=1)
  
}
rpart.plot(decision.tree.model)
varImp(decision.tree.model)
varImp(decision.tree.model, sort = TRUE, main="Variable Importance")
decision.tree.model$variable.importance







################################ Model 2 - Random Forest ################################ 


set.seed(9)
rmse.test.RF <- vector("numeric", 10)
rmse.train.RF <- vector("numeric", 10)

folds <- cut(seq(1,nrow(final.df)),breaks=10,labels=FALSE)
for(i in 1:10)
{
  testIndexes <- which(folds==i,arr.ind=TRUE)
  test <- final.df[testIndexes, ]
  train <- final.df[-testIndexes, ]
  
  
  random.forest.model<-randomForest(Peak.Demand ~ .,data=train,ntree=500,mtry = 4,importance=T)
  
  # Making Predictions
  random.forest.pred<-predict(random.forest.model,newdata=train)
  random.forest.pred.OS<-predict(random.forest.model,newdata=test)
  
  rmse.train.RF[i]<-rmse(actual = train$Peak.Demand,predicted = random.forest.pred)
  rmse.test.RF[i]<-rmse(actual = test$Peak.Demand,predicted = random.forest.pred.OS)
  
  plot(random.forest.pred.OS, test$Peak.Demand, xlab = "predicted rf", ylab = "actual.test", main=c(i, "test"))
  abline(a=0,b=1)
  
}
# Finding the important predictors.
plot(random.forest.model)
varImpPlot(random.forest.model)
varImpPlot(random.forest.model, sort = T, main="Variable Importance")

var.imp <- data.frame(importance(random.forest.model,type=2))
var.imp$Variables <- row.names(var.imp)
var.imp[order(var.imp$IncNodePurity,decreasing = T),]
random.forest.model$predicted






################################ Model 3 - MARS ################################ 


set.seed(9)
rmse.test.UPMARS <- vector("numeric", 10)
rmse.train.UPMARS <- vector("numeric", 10)

rmse.test.PMARS <- vector("numeric", 10)
rmse.train.PMARS <- vector("numeric", 10)


folds <- cut(seq(1,nrow(final.df)),breaks=10,labels=FALSE)
for(i in 1:10)
{
  testIndexes <- which(folds==i,arr.ind=TRUE)
  test <- final.df[testIndexes, ]
  train <- final.df[-testIndexes, ]
  
  
  ################################ Model 3A-MARS(Unpruned) ################################
  mars.unpruned.model<- earth(Peak.Demand~., data=train,pmethod = 'none')
  
  # Making Predictions
  mars.unpruned.model.pred <- predict(mars.unpruned.model, train)
  mars.unpruned.model.pred.OS <- predict(mars.unpruned.model, test)  
  
  rmse.train.UPMARS[i] <- rmse(actual = train$Peak.Demand, predicted = mars.unpruned.model.pred)
  rmse.test.UPMARS[i] <- rmse(actual = test$Peak.Demand, predicted = mars.unpruned.model.pred.OS)
  
  
  
  ################################ Model 3B-MARS(Pruned) ################################
  mars.pruned.model<-earth(Peak.Demand~., data=train)
  
  # Making Predictions
  mars.pruned.model.pred <- predict(mars.pruned.model, train)
  mars.pruned.model.pred.OS <- predict(mars.pruned.model, test)  
  
  rmse.train.PMARS[i] <- rmse(actual = train$Peak.Demand, predicted = mars.pruned.model.pred)
  rmse.test.PMARS[i] <- rmse(actual = test$Peak.Demand, predicted = mars.pruned.model.pred.OS)
  
  
}

par(mfrow=c(1,1))
plot(evimp(mars.unpruned.model), main = "UnPruned Model") 

par(mfrow=c(1,1))
plot(evimp(mars.unpruned.model), main = "Pruned Model")  




################################ Fitting the Models ################################
rmse.test.DT <- vector("numeric", 10)
rmse.train.DT <- vector("numeric", 10)

rmse.test.RF.fl <- vector("numeric", 10)
rmse.train.RF.fl <- vector("numeric", 10)


folds <- cut(seq(1,nrow(final.df)),breaks=10,labels=FALSE)
#Perform 10 fold cross validation
for(i in 1:10)
{
  testIndexes <- which(folds==i,arr.ind=TRUE)
  testData <- final.df[testIndexes, ]
  trainData <- final.df[-testIndexes, ]
  
  
  
  ################################ Model 1-Decision Trees ################################
  # Fitting the Model(After finding the Predictors)
  random.forest.model.fl<-randomForest(Peak.Demand ~ HOURLYDRYBULBTEMPC.avg + HOURLYWETBULBTEMPC.avg + HOURLYDewPointTempC.avg + HOURLYRelativeHumidity.avg + HOURLYWindSpeed.avg + HOURLYStationPressure.Max + PopDensity,data=trainData,ntree=500,mtry = 4,importance=T)
  
  # Making Predictions
  random.forest.pred.fl<-predict(random.forest.model.fl,newdata=trainData)
  random.forest.pred.fl.OS<-predict(random.forest.model.fl,newdata=testData)
  
  rmse.train.RF.fl[i]<-rmse(actual = trainData$Peak.Demand,predicted = random.forest.pred.fl)
  rmse.test.RF.fl[i]<-rmse(actual = testData$Peak.Demand,predicted = random.forest.pred.fl.OS)
  
  plot(random.forest.pred.fl.OS, testData$Peak.Demand, xlab = "predicted rf", ylab = "actual.test", main=c(i, "test"))
  abline(a=0,b=1)
  
  
  
  
  
  ################################ Model 2-Random Forest ################################
  # Fitting the Model(After finding the Predictors)
  decision.tree.model<-rpart(Peak.Demand ~ HOURLYDRYBULBTEMPC.avg + HOURLYWETBULBTEMPC.avg + HOURLYDewPointTempC.avg + HOURLYRelativeHumidity.avg + HOURLYWindSpeed.avg + HOURLYStationPressure.Max + PopDensity,data=trainData)
  
  # Making Predictions
  decision.tree.pred<-predict(decision.tree.model,newdata=trainData)
  decision.tree.pred.OS<-predict(decision.tree.model,newdata=testData)
  
  rmse.train.DT[i]<-rmse(actual = trainData$Peak.Demand,predicted = decision.tree.pred)
  rmse.test.DT[i]<-rmse(actual = testData$Peak.Demand,predicted = decision.tree.pred.OS)
  
  plot(decision.tree.pred.OS, testData$Peak.Demand, xlab = "predicted DT", ylab = "actual.test", main=c(i, "test"))
  abline(a=0,b=1)
  
  
  
  
  ################################ Model 3A-MARS(Unpruned) ################################
  mars.unpruned.model<- earth(Peak.Demand~ HOURLYDRYBULBTEMPC.avg + HOURLYWETBULBTEMPC.Max + YEAR + HOURLYWindSpeed.avg + PopDensity + HOURLYRelativeHumidity.Min, data=trainData,pmethod = 'none')
  
  qqnorm(resid(mars.unpruned.model))
  qqline(resid(mars.unpruned.model))
  
  # Making Predictions
  mars.unpruned.model.pred <- predict(mars.unpruned.model, trainData)
  mars.unpruned.model.pred.OS <- predict(mars.unpruned.model, testData)  
  
  rmse.train.UPMARS[i] <- rmse(actual = trainData$Peak.Demand, predicted = mars.unpruned.model.pred)
  rmse.test.UPMARS[i] <- rmse(actual = testData$Peak.Demand, predicted = mars.unpruned.model.pred.OS)
  
  
  
  
  
  ################################ Model 3B-MARS(Pruned) ################################
  mars.pruned.model<-earth(Peak.Demand~ HOURLYDRYBULBTEMPC.avg + HOURLYWETBULBTEMPC.Max + YEAR + HOURLYWindSpeed.avg + PopDensity + HOURLYRelativeHumidity.Min, data=trainData)
  
  qqnorm(resid(mars.pruned.model))
  qqline(resid(mars.pruned.model))
  
  # Making Predictions
  mars.pruned.model.pred <- predict(mars.pruned.model, trainData)
  mars.pruned.model.pred.OS <- predict(mars.pruned.model, testData)  
  
  rmse.train.PMARS[i] <- rmse(actual = trainData$Peak.Demand, predicted = mars.pruned.model.pred)
  rmse.test.PMARS[i] <- rmse(actual = testData$Peak.Demand, predicted = mars.pruned.model.pred.OS)
  
}





all.models<-data.frame(mean(rmse.train.DT),mean(rmse.train.RF.fl),mean(rmse.train.UPMARS),mean(rmse.train.PMARS))
colnames(all.models)<-c("DT","RF","MARS(Unpruned)","MARS(Pruned)")
rownames(all.models)<-"RMSE(In Sample)"
all.models


all.models.OS<-data.frame(mean(rmse.test.DT),mean(rmse.test.RF.fl),mean(rmse.test.UPMARS),mean(rmse.test.PMARS))
colnames(all.models.OS)<-c("DT","RF","MARS(Unpruned)","MARS(Pruned)")
rownames(all.models.OS)<-"RMSE(Out of Sample)"
all.models.OS


