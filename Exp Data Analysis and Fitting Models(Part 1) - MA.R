library(psych)
library(dplyr)

#importing data - final dataset with Population density------------------------------------------------
ct <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA/CT.csv", sep = ",", header = T, stringsAsFactors = F)
ct$Date <- as.Date(ct$Date)

ct1 <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA/CT.csv", sep = ",", header = T, stringsAsFactors = F)
ct1$Date <- as.Date(ct$Date)
ct1<-ct1[,c(3,5:23,25,26)]

me <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA/ME.csv", sep = ",", header = T, stringsAsFactors = F)
me$Date <- as.Date(me$Date)


ma <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA//MA.csv", sep = ",", header = T, stringsAsFactors = F)
ma$Date <- as.Date(ma$Date)

ma1 <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA/CT.csv", sep = ",", header = T, stringsAsFactors = F)
ma1$Date <- as.Date(ma1$Date)
ma1<-ma[,c(3,5:23,25,26)]

nh <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA/nh.csv", sep = ",", header = T, stringsAsFactors = F)
nh$Date <- as.Date(nh$Date)

vt <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA/vt.csv", sep = ",", header = T, stringsAsFactors = F)
vt$Date <- as.Date(vt$Date)

ri <- read.table("F:/Purdue/Predictive Modelling/Project/FINAL DATA/ri.csv", sep = ",", header = T, stringsAsFactors = F)
ri$Date <- as.Date(ri$Date)

df <- rbind(ct, me, ma, nh, vt, ri)



#Searching the NA values
str(ma)
summary(ma)
str(ma1)
summary(ma1)
#No NA values present


# distribution of each variable
par(mfrow=c(3,2))
for (i in 1:22) {
  hist(ma1[,i], xlab=names(ma1)[i], main=names(ma1)[i], col="blue", prob=T)
  lines(density(ma1[,i]), col="red", lwd=2) #adds density line
}





#Plotting the correlation matrix and and identifying possible predictors------------------------------
library(psych)
library(corrplot)
library(Hmisc)
r <- cor(ma[,c(3,5:23,25,26)])
res<- rcorr(as.matrix(ma[,c(3,5:23,25,26)]))
corrplot(r, method="circle")


#Correlation (>0.8) between Peak Demand and other predictors
lt <- lower.tri(res$r)
c1<-data.frame(
  row = rownames(res$r)[row(res$r)[lt]],
  column = rownames(res$r)[col(res$r)[lt]],
  cor  =(res$r)[lt])
c2 <- c1[c1$cor>0.8,]
c2<- c2[order(c2$cor,decreasing = TRUE),]

#Based on correlation matrix c1(Correlation with Peak Demand) and c2(Multi correlation amongst predictors) 
#we keep DryBulb.avg, WetBulb.min, Dewpoint.avg, StPress.min
#and remove date,state,county and year

ma2<-subset(ma1, select = c(-2,-3,-5,-7,-8,-9,-17,-19,-20))



#Exploratory Data Analysis of these 13 variables------------------------------------------------------
pairs(ma2[,c(1,2,3,4,5)], main = "Scatterplot Matrix")
pairs(ma2[,c(1,6,7,8,9)],main= "Scatterplot Matrix")
pairs(ma2[,c(1,10,11,12,13)], main= "Scatterplot Matrix")


#Density plots of the predictors----------------------------------------------------------------------
plot1<-ggplot(ma, aes(x=Peak.Demand))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "daily Peak Demand in GWh (2011-17)",title="Density plot of daily peak Demand")


plot2<-ggplot(ma, aes(x=DryBulb.avg))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Average Dry Bulb temperature (oC)",title="Density plot of  average Dry Bulb temperature")

plot3<-ggplot(ma, aes(x=WetBulb.min))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Max. Wet Bulb temperature (oF)",title="Density plot of  minimum Wet Bulb temperature")


plot4<-ggplot(ma, aes(x=DewPoint.avg))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Average Dew Point (oC)",title="Density plot of  average Dew Point")

plot5<-ggplot(ma, aes(x=RelHumi.max))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Max. Relative Humidity (%)",title="Density plot of maximum Relative Humidity")

plot6<-ggplot(ma, aes(x=RelHumi.min))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Min. Relative Humidity (%)",title="Density plot of minimum Relative Humidity")

plot7<-ggplot(ma, aes(x=RelHumi.avg))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Average Relative Humidity (%)",title="Density plot of  average Relative Humidity")

plot8<-ggplot(ma, aes(x=WindSpeed.max))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Max. Wind Speed (MPH)",title="Density plot of maximum Wind Speed")

plot9<-ggplot(ma, aes(x=WindSpeed.min))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Min. Wind Speed (MPH)",title="Density plot of minimum Wind Speed")

plot10<-ggplot(ma, aes(x=WindSpeed.avg))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Average Wind Speed (MPH)",title="Density plot of  average Wind Speed")

plot11<-ggplot(ma, aes(x=StPress.min))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Max. Station Pressure (in Hg)",title="Density plot of minimum Station Pressure")

plot12<-ggplot(ma, aes(x=AREA.sqm.))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Area (in sq.m)",title="Density plot of Area")

plot13<-ggplot(ma, aes(x=PopDensity))+ 
  geom_density(colour="darkblue",fill="lightblue",alpha=0.5,na.rm = TRUE)+
  labs(x = "Population Density (2011-17)",title="Density plot of population density")


require(gridExtra)
plot1
grid.arrange(plot2, plot3, plot4,plot5, plot6,plot7, ncol=2)
grid.arrange(plot8, plot9, plot10,plot11, plot12,plot13, ncol=2)

#Scatter plots----------------------------------------------------------------------------------------ter Plots

scplot1<-ggplot(ma, aes(x=DryBulb.avg, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Average Dry Bulb temperature (oC)", y="Peak Demand (GWh)",title="Plot between Peak Demand and average Dry Bulb temperature")


scplot2<-ggplot(ma, aes(x=WetBulb.min, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Min. Wet Bulb temperature (oF)", y="Peak Demand (GWh)",title="Plot between Peak Demand and min. Wet Bulb temperature")


scplot3<-ggplot(ma, aes(x=DewPoint.avg, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Average Dew Point temperature (oC)", y="Peak Demand (GWh)",title="Plot between Peak Demand and average Dew Point temperature")


scplot4<-ggplot(ma, aes(x=RelHumi.max, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Max. Relative Humidity (%)", y="Peak Demand (GWh)",title="Plot between Peak Demand and max. Relative Humidity")

scplot5<-ggplot(ma, aes(x=RelHumi.min, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Min. Relative Humidity (%)", y="Peak Demand (GWh)",title="Plot between Peak Demand and min. Relative Humidity")

scplot6<-ggplot(ma, aes(x=RelHumi.avg, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Average Relative Humidity (%)", y="Peak Demand (GWh)",title="Plot between Peak Demand and avg. Relative Humidity")


scplot7<-ggplot(ma, aes(x=WindSpeed.max, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Max. Wind Speed (MPH)", y="Peak Demand (GWh)",title="Plot between Peak Demand and max. Wind Speed")

scplot8<-ggplot(ma, aes(x=WindSpeed.min, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Min. Wind Speed (MPH)", y="Peak Demand (GWh)",title="Plot between Peak Demand and min. Wind Speed")

scplot9<-ggplot(ma, aes(x=WindSpeed.avg, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Average Wind Speed (MPH)", y="Peak Demand (GWh)",title="Plot between Peak Demand and avg. Wind Speed")


scplot10<-ggplot(ma, aes(x=StPress.min, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Min. Station Pressure (in Hg)", y="Peak Demand (GWh)",title="Plot between Peak Demand and min. Station Pressure")

scplot11<-ggplot(ma, aes(x=AREA.sqm., y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Area (in sq.m)", y="Peak Demand (GWh)",title="Plot between Peak Demand and Area")

scplot12<-ggplot(ma, aes(x=PopDensity, y=Peak.Demand)) + 
  geom_point(shape=18, color="red")+
  geom_smooth(method=lm, se=FALSE, colour ="darkred") +
  labs(x = "Population Density", y="Peak Demand (GWh)",title="Plot between Peak Demand and Population Density")


grid.arrange(scplot1, scplot2, scplot3,scplot4, scplot5,scplot6, ncol=2)
grid.arrange(scplot7, scplot8, scplot9,scplot10, scplot11,scplot12, ncol=2)

#Using mlr to decide predicting parameters-----------------------------------------------------------

#We run MLR with these 13 variables
mlr1<-lm(Peak.Demand~., data = ma2)
summary(mlr1)
#As seen from the ANOVA we drop minimum and average Relative Humidity
#As seen from the ANOVA we drop maximum and average Wind Speed
#We drop Area too

ma3<-subset(ma2, select = c(-6,-7,-8,-10,-12))
mlr2<-lm(Peak.Demand~.,data = ma3)
summary(mlr2)
alias(mlr2)
#Very low R-square value 0.3492 


#Training and Testing------------------------------------------------------------------------------
#Splitting the data into training and testing sets
sample_data<-sample(length(ma1[,1]),size=0.85*(length(ma1[,1])),replace=FALSE,set.seed(9))
train.df<-ma1[sample_data,]
test.df<-ma1[-sample_data,]


library(car)
#Stepwise Regression for variable selection
null=lm(Peak.Demand~1, data=train.df)
full=lm(Peak.Demand~., data=train.df)
step(null, scope = list(upper=full), data=train.df, direction="both")

#MLR-------------------------------------------------------------------------------------------------
#we choose these set of predictors from stepwise for further testing
library(ModelMetrics)
mlr4<-lm(Peak.Demand ~ Population + AREA.sqm. + WindSpeed.max + 
           DryBulb.max + StPress.min + RelHumi.max + DewPoint.avg + 
           DryBulb.min + WindSpeed.avg + DryBulb.avg + WetBulb.min + 
           WetBulb.max + RelHumi.avg + WetBulb.avg + PopDensity + WindSpeed.min + 
           StPress.max + StPress.avg + DewPoint.min, data = train.df)
summary(mlr4)
#R-square improves

#Taking only those variables with high value co-efficients seen in Stepwise
mlr5<-lm(Peak.Demand ~ WindSpeed.max + RelHumi.max + DewPoint.avg + DryBulb.avg + PopDensity + StPress.avg, data=train.df )
summary(mlr5)
#Poorer R-square than mlr4. So, keeping mlr4 as it is.

# In Sample 
pred.ordinary.model.insample<-predict(mlr4,newdata=train.df)
y.test.ordinary.insample <- as.matrix(test.df$Peak.Demand)
rmse.mlr.insample<-rmse(y.test.ordinary.insample,pred.ordinary.model.insample)
rmse.mlr.insample
rmse.type.insample<-rmse(y.test.ordinary.insample,pred.ordinary.model.insample)
#rmse 846.0816

# Out of Sample
pred.ordinary.model<-predict(mlr4,newdata=test.df)
y.test.ordinary <- as.matrix(test.df$Peak.Demand)
rmse.mlr<-rmse(y.test.ordinary,pred.ordinary.model)
rmse.type<-rmse(y.test.ordinary,pred.ordinary.model)
rmse.type.loocv<-rmse(y.test.ordinary,pred.ordinary.model)
rmse.mlr
#High RMSE of 475 achieved. Therefore, further investigation required

#Residual Diagnostic
par(mfrow = c(2, 2))
plot(mlr4)
#No pattern as such, QQ-plot not good
#Let's investigate further

#BOXCOX----------------------------------------------------------------------------------------------

library('MASS')
#Boxcox for mlr4
BC<-boxcox(Peak.Demand ~ Population + AREA.sqm. + WindSpeed.max + 
              DryBulb.max + StPress.min + RelHumi.max + DewPoint.avg + 
              DryBulb.min + WindSpeed.avg + DryBulb.avg + WetBulb.min + 
              WetBulb.max + RelHumi.avg + WetBulb.avg + PopDensity + WindSpeed.min + 
              StPress.max + StPress.avg + DewPoint.min, data = train.df,lambda = seq(-4,4))
lamdamax<- BC$x[which.max(BC$y)]
lamdamax
transmodel<-lm(Peak.Demand**(lamdamax)~ Population + AREA.sqm. + WindSpeed.max + 
                 DryBulb.max + StPress.min + RelHumi.max + DewPoint.avg + 
                 DryBulb.min + WindSpeed.avg + DryBulb.avg + WetBulb.min + 
                 WetBulb.max + RelHumi.avg + WetBulb.avg + PopDensity + WindSpeed.min + 
                 StPress.max + StPress.avg + DewPoint.min, data = train.df)
summary(transmodel)

# Out of Sample
predicttrans<- predict(transmodel,newdata=test.df)
predicttrans
rmtrans<- rmse(as.matrix(test.df$Peak.Demand),predicttrans)

# In Sample
predicttrans.insample<- predict(transmodel,newdata=train.df)
predicttrans.insample
rmtrans.insample<- rmse(as.matrix(train.df$Peak.Demand),predicttrans.insample)

par(mfrow = c(2, 2))
plot(transmodel)

par(mfrow = c(1, 2))
plot(BC)

#Boxcox for mlr5
BC<-boxcox(Peak.Demand ~ WindSpeed.max + RelHumi.max + DewPoint.avg + DryBulb.avg + PopDensity + StPress.avg, data=train.df,lambda = seq(-4,4))
lamdamax<- BC$x[which.max(BC$y)]
lamdamax
transmodel<-lm(Peak.Demand**(lamdamax)~ WindSpeed.max + RelHumi.max + DewPoint.avg + DryBulb.avg + PopDensity + StPress.avg, data=train.df)
summary(transmodel)

# Out of Sample 
predicttrans<- predict(transmodel,newdata=test.df)
predicttrans
rmtrans<- rmse(as.matrix(test.df$Peak.Demand),predicttrans)

# In Sample 
predicttrans.insample<- predict(transmodel,newdata=train.df)
predicttrans.insample
rmtrans.insample<- rmse(as.matrix(train.df$Peak.Demand),predicttrans.insample)


par(mfrow = c(2, 2))
plot(transmodel)

par(mfrow = c(1, 2))
plot(BC)



#RMSE very very very high - 2633
#Higher than MLR hence no transformation done using boxcox



#Ridge Regression with variables selected from stepwise----------------------------------------------
library('glmnet')
y.train <- as.matrix(train.df$Peak.Demand)
x.train <- as.matrix(cbind(train.df[,c(2:7,9:11,13,14:22)]))
#4,10,11,14,22,19
ridge.model<-glmnet(x=x.train,y=y.train,family = "gaussian",alpha=0)


ridge.model.cv<-cv.glmnet(x=x.train,y=y.train,alpha=0, type.measure= "mse")
plot(ridge.model.cv)
lamda.optimum <- ridge.model.cv$lambda.min

lamda.optimum
ridge.coef<- as.matrix(coef(ridge.model.cv, s = "lambda.min"))
ridge.coef

yhat <- predict(ridge.model.cv, s = lamda.optimum,newx=x.train)

y.test<-as.matrix(test.df$Peak.Demand)
x.test<- as.matrix(cbind(test.df[,c(2:7,9:11,13,14:22)]))

# Out of Sample
predictridge<- predict(ridge.model.cv,newx=x.test,s=lamda.optimum)
rmridge<-rmse(y.test,predictridge)
rmse.rid<-rmse(y.test,predictridge)
rmse.rid.loocv<-rmse(y.test,predictridge)
#RMSE still high 483

# SSE and SST for Ridge
SST <- sum((y.train - mean(y.train))^2)
SSE <- sum((yhat - y.train)^2)

# R squared Ridge
rsquare <- 1 - (SSE / SST)
rsquare

# In Sample
predictridge.insample<- predict(ridge.model.cv,newx=x.train,s=lamda.optimum)
rmridge<-rmse(y.train,predictridge.insample)
rmse.rid.insample<-rmse(y.train,predictridge.insample)
#RMSE still high 466



#According to ridge regression coefficeints that show importance are:
#WetBulb.max, RelHumi.max, DewPoint.avg, WindSpeed.avg, DryBulb.max, StPress.min
#RMSE is 624 while R-square is 0.13

#Lasso-----------------------------------------------------------------------------------------
set.seed(9)
y.train.las <- as.matrix(train.df$Peak.Demand)
x.train.las <- as.matrix(cbind(train.df[,2:22]))

lasso.model.cv<-cv.glmnet(x=x.train.las,y=y.train.las,alpha=1)
plot(lasso.model.cv)

lamda.optimum.lasso <- lasso.model.cv$lambda.min
lamda.optimum.lasso
lasso.coef<- as.matrix(coef(lasso.model.cv, s = "lambda.min"))
lasso.coef




y.test<-as.matrix(test.df$Peak.Demand)
x.test<- as.matrix(cbind(test.df[,2:22]))

# Out of Sample
predictlasso<-predict(lasso.model.cv,newx=x.test,s=lamda.optimum.lasso)
rmlasso<-rmse(y.test,predictlasso)
rmse.las.loocv<-rmse(y.test,predictlasso)
rmse.las<-rmse(y.test,predictlasso)
#RMSE is 476

#In Sample
predictlasso.insample<-predict(lasso.model.cv,newx=x.train.las,s=lamda.optimum.lasso)
rmlasso<-rmse(y.train,predictlasso.insample)
rmse.las.insample<-rmse(y.train,predictlasso.insample)
# RMSE insample is 461

#The important variables from Lasso are
#DryBulb.avg, WetBulb.max, DewPoint.avg, RelHumi.max, WindSpeed.max, StPress.avg, Area, PopDensity

#RMSE still high
#Hence use K-fold and LOOCV CV



##Cross - Validation Begins--------------------------------------------------------------------------

folds <- 10
ma1$folds<- sample(seq(1:folds),size=nrow(ma1),replace = T)


error.df <- data.frame(MLR=numeric(folds),
                       Ridge=numeric(folds),
                       Lasso=numeric(folds),
                       GAM=numeric(folds),
                       rpart=numeric(folds),
                       rf=numeric(folds))

error.df.insample <- data.frame(MLR=numeric(folds),
                                Ridge=numeric(folds),
                                Lasso=numeric(folds),
                                GAM=numeric(folds))

library(ModelMetrics)
library('glmnet')
#Linear Regression with K-fold CV--------------------------------------------------------------------

#Perform 10 fold cross validation
for(i in 1:10){
  set.seed(9)
  fold<-which(ma1$folds==i)
  testData<-ma1[which(ma1$folds==i),]
  trainData<-ma1[-which(ma1$folds==i),]
  
  
  ordinary.model<-lm(Peak.Demand ~  WindSpeed.max + RelHumi.max + DewPoint.avg + DryBulb.avg + WetBulb.max + PopDensity + StPress.avg + AREA.sqm., data=trainData)
  # Out of Sample
  pred.ordinary.model<-predict(ordinary.model,newdata=testData)
  y.test.ordinary <- as.matrix(testData$Peak.Demand)
  rmse.type[i]<-rmse(y.test.ordinary,pred.ordinary.model)
  error.df$MLR[i]<-rmse(y.test.ordinary,pred.ordinary.model)
  
  # In Sample 
  pred.ordinary.model.insample<-predict(ordinary.model,newdata=trainData)
  y.test.ordinary.insample <- as.matrix(trainData$Peak.Demand)
  rmse.type.insample[i]<-rmse(y.test.ordinary.insample,pred.ordinary.model.insample)
  error.df.insample$MLR[i]<-rmse(y.test.ordinary.insample,pred.ordinary.model.insample)
  
  
  
  
  #Ridge regression with K-fold CV----------------------------------------------------------------
  
  #Perform 10 fold cross validation
  
  y.train.ridge <- as.matrix(trainData$Peak.Demand)
  x.train.ridge <- as.matrix(cbind(trainData[,c(4,5,10,11,14,19,21,22)]))
  y.test.ridge <- as.matrix(testData$Peak.Demand)
  x.test.ridge <- as.matrix(cbind(testData[,c(4,5,10,11,14,19,21,22)]))
  
  cv.ridge.model<-cv.glmnet(x=x.train.ridge,y=y.train.ridge,alpha=0)
  cv.optimum.lamda <- cv.ridge.model$lambda.min
  
  # Out of Sample
  y_hat.ridge <- predict(cv.ridge.model, s = cv.optimum.lamda,newx=x.test.ridge)
  rmse.rid[i]<-rmse(y.test.ridge,y_hat.ridge)
  error.df$Ridge[i]<- rmse(y.test.ridge,y_hat.ridge)
  
  # In Sample 
  y_hat.ridge.insample <- predict(cv.ridge.model, s = cv.optimum.lamda,newx=x.train.ridge)
  rmse.rid.insample[i]<-rmse(y.train.ridge,y_hat.ridge.insample)
  error.df.insample$Ridge[i]<- rmse(y.train.ridge,y_hat.ridge.insample)
  
  
  #LASSO Regression with K-fold CV--------------------------------------------------------------------
  
  
  y.train.lasso <- as.matrix(trainData$Peak.Demand)
  x.train.lasso <- as.matrix(cbind(trainData[,c(4,5,10,11,14,19,21,22)]))
  y.test.lasso<- as.matrix(testData$Peak.Demand)
  x.test.lasso <- as.matrix(cbind(testData[,c(4,5,10,11,14,19,21,22)]))
  
  cv.lasso.model<-cv.glmnet(x=x.train.lasso,y=y.train.lasso,alpha=1)
  cv.optimum.lamda.lasso <- cv.lasso.model$lambda.min
  
  y_hat.lasso <- predict(cv.lasso.model, s = cv.optimum.lamda.lasso,newx=x.test.lasso)
  rmse.las[i]<-rmse(y.test.lasso,y_hat.lasso)
  error.df$Lasso[i]<-rmse(y.test.lasso,y_hat.lasso)
  
  y_hat.lasso.insample <- predict(cv.lasso.model, s = cv.optimum.lamda.lasso,newx=x.train.lasso)
  rmse.las.insample[i]<-rmse(y.test.lasso,y_hat.lasso.insample)
  error.df.insample$Lasso[i]<-rmse(y.test.lasso,y_hat.lasso.insample)
}


par(mfrow = c(2, 2))
plot(ordinary.model,  main = "Linear Model")

op <- par(mfrow=c(2, 2))
plot(cv.ridge.model$glmnet.fit, "norm",   label=TRUE,main = "Ridge Model")
plot(cv.ridge.model$glmnet.fit, "lambda", label=TRUE,main = "Ridge Model")
plot(cv.ridge.model, main = "Ridge Model")
par(op)

op1 <- par(mfrow=c(2, 2))
plot(cv.lasso.model$glmnet.fit, "norm",   label=TRUE,main = "Lasso Model")
plot(cv.lasso.model$glmnet.fit, "lambda", label=TRUE,main = "Lasso Model")
plot(cv.lasso.model, main = "Lasso Model")
par(op1)

# Lasso Model
# Out of Sample
mean(rmse.las)
#530
# In Sample
mean(rmse.las.insample)
#757


# Ridge Model
# Out of Sample
mean(rmse.rid)
#533
# In Sample
mean(rmse.rid.insample)
#533



# Linear Model
# Out of Sample
mean(rmse.type)
#530
# In Sample
mean(rmse.type.insample)
#530



#Let's fit other models now using these variables from Lasso

#GAM-----------------------------------------------------------------------------------------------

library(gam)


gam.1<-gam(Peak.Demand ~  DryBulb.avg + WetBulb.max + DewPoint.avg + RelHumi.max + WindSpeed.max + 
             StPress.avg + AREA.sqm. + PopDensity,data=train.df)


gam.step <- step.gam(gam.1,scope = list("DryBulb.avg" =~ 1+ DryBulb.avg+ s(DryBulb.avg, df = 2)+ s(DryBulb.avg, df = 3)+ s(DryBulb.avg, df = 5),         
                                        
                                        "WetBulb.max" =~ 1+ WetBulb.max+ s(WetBulb.max, df = 2)+ s(WetBulb.max, df = 3)+ s(WetBulb.max, df = 5), 
                                        
                                        "DewPoint.avg" =~ 1+ DewPoint.avg+ s(DewPoint.avg, df = 2)+ s(DewPoint.avg, df = 3)+ s(DewPoint.avg, df = 5), 
                                        
                                        "RelHumi.max" =~ 1+ RelHumi.max+ s(RelHumi.max, df = 2)+ s(RelHumi.max, df = 3)+ s(RelHumi.max, df = 5),
                                        
                                        "WindSpeed.max" =~ 1+ WindSpeed.max+ s(WindSpeed.max, df = 2)+ s(WindSpeed.max, df = 3)+ s(WindSpeed.max, df = 5),
                                        
                                        "StPress.avg" =~ 1+ StPress.avg+ s(StPress.avg, df = 2)+ s(StPress.avg, df = 3)+ s(StPress.avg, df = 5), 
                                        
                                        "AREA.sqm." =~ 1+ AREA.sqm.+ s(AREA.sqm., df = 2)+ s(AREA.sqm., df = 3)+ s(AREA.sqm., df = 5),
                                        
                                        "PopDensity" =~ 1+ PopDensity+ s(PopDensity, df = 2)+ s(PopDensity, df = 3)+ s(PopDensity, df = 5)),
                     direction = "both", trace=2)


for(i in 1:10){
  
  fold<-which(ma1$folds==i)
  testData<-ma1[which(ma1$folds==i),]
  trainData<-ma1[-which(ma1$folds==i),]
  

  gam.2<-gam(Peak.Demand ~ s(DryBulb.avg, df = 5) + s(WetBulb.max, df = 5) + s(DewPoint.avg, df = 3) +
               s(RelHumi.max, df = 5) + s(WindSpeed.max,df = 5) + StPress.avg + s(AREA.sqm., df = 5) +
               s(PopDensity,df = 5), data = trainData)
  y.test.gam <- as.matrix(testData$Peak.Demand)
  
  # Out of Sample
  gam.predict<-predict(gam.2,testData)
  rmse.gam[i]<-rmse(y.test.gam,gam.predict)
  error.df$GAM[i]<-rmse(y.test.gam,gam.predict)
  
  # In Sample
  gam.predict.insample<-predict(gam.2,trainData)
  rmse.gam.insample[i]<-rmse(y.test.gam,gam.predict.insample)
  error.df.insample$GAM[i]<-rmse(y.test.gam,gam.predict.insample)
}
mean(rmse.gam)
#284
mean(rmse.gam.insample)
#820

#GAM best till now

summary(gam.2)
plot(gam.2$residuals)


par(mfrow=c(2,2))
## normal QQ-plot of deviance residuals
qqnorm(residuals(gam.2),pch=19,cex=.3)

plot(fitted(gam.2), residuals(gam.2)); 
title("Residual vs Fit. value - GAM model");



par(mfrow=c(1,4))
boxplot(error.df$MLR, main = "MLR",
        xlab = "RMSE",
        ylab = "Value")
boxplot(error.df$Ridge,main = "Ridge",
        xlab = "RMSE",
        ylab = "Value")
boxplot(error.df$Lasso,main = "Lasso",
        xlab = "RMSE",
        ylab = "Value")
boxplot(error.df$GAM, main = "GAM",
        xlab ="RMSE",
        ylab = "Value")


it1.df<-data.frame(mean(error.df$MLR),mean(error.df$Ridge),mean(error.df$Lasso),mean(error.df$GAM))
colnames(it1.df)<-c("MLR K-fold","Ridge K-fold","Lasso K-fold","GAM K-fold")
rownames(it1.df)<-"RMSE"
it1.df

it2.df<-data.frame(mean(error.df.insample$MLR),mean(error.df.insample$Ridge),mean(error.df.insample$Lasso),mean(error.df.insample$GAM))
colnames(it2.df)<-c("MLR K-fold","Ridge K-fold","Lasso K-fold","GAM K-fold")
rownames(it2.df)<-"RMSE"
it2.df








