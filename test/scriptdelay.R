library(dplyr)
library(magrittr)

origData<-read.csv2('FlightData.csv',sep = ",",header=TRUE)

# Remove unnecessary column
origData <- origData[, -c(6:8, 10:12, 13:19, 22)]
# Convert columns to numeric and factor
cols = c(1:6, 9)
origData[,cols] %<>% lapply(function(x) as.numeric(as.character(x)))
cols2 = c(7, 8)
origData[,cols2] %<>% lapply(function(x) as.factor(as.character(x)))


# Specifically set Data Frame for each category's data prediction
DelayTotalData      <- origData
DelayTotalData      <- DelayTotalData[, -c(1:5)]

CarrierDelayData    <- origData
CarrierDelayData    <- CarrierDelayData[, -c(2:6)]

AircraftDelayData   <- origData
AircraftDelayData   <- AircraftDelayData[, -c(1, 3:6)]

NASDelayData        <- origData
NASDelayData        <- NASDelayData[, -c(1, 2, 4:6)]

SecurityDelayData   <- origData
SecurityDelayData   <- SecurityDelayData[, -c(1:3, 5, 6)]

WeatherDelayData    <- origData       
WeatherDelayData    <- WeatherDelayData[, -c(1:4, 6)]

# Creating new Dataframe for 2017 prediction
testData                          <- origData
testData$Year[testData$Year<2017] <- c(2017)
testData                          <- testData[, -c(1:6)]
testData                          <- unique(testData)

# Create model for predicting each category of delay
Delayedmodel  <- lm(Delayed ~ . , data = DelayTotalData)
Delayedresult <- predict(Delayedmodel,testData)

CarrierModel  <- lm(X..of.Delays.Carrier ~ . , data = CarrierDelayData)
CarrierResult <- predict(CarrierModel,testData)

AircraftModel  <- lm(X..of.Delays.Late.Aircraft ~ . , data = AircraftDelayData)
AircraftResult <- predict(AircraftModel,testData)

NASModel  <- lm(X..of.Delays.National.Aviation.System ~ . , data = NASDelayData)
NASResult <- predict(NASModel,testData)

SecurityModel  <- lm(X..of.Delays.Security ~ . , data = SecurityDelayData)
SecurityResult <- predict(SecurityModel,testData)

WeatherModel  <- lm(X..of.Delays.Weather ~ . , data = WeatherDelayData)
WeatherResult <- predict(WeatherModel,testData)

# Create new DataFrame to pass the prediction result for 2017
newTest <- testData
newTest$Delayed <- Delayedresult
newTest$Delayed[newTest$Delayed<=0] <- 0

newTest$X..of.Delays.Carrier <- CarrierResult
newTest$X..of.Delays.Carrier[newTest$X..of.Delays.Carrier<=0] <- 0

newTest$X..of.Delays.Late.Aircraft <- AircraftResult
newTest$X..of.Delays.Late.Aircraft[newTest$X..of.Delays.Late.Aircraft<=0] <- 0

newTest$X..of.Delays.National.Aviation.System <- NASResult
newTest$X..of.Delays.National.Aviation.System[newTest$X..of.Delays.National.Aviation.System<=0] <- 0

newTest$X..of.Delays.Security <- SecurityResult
newTest$X..of.Delays.Security[newTest$X..of.Delays.Security<=0] <- 0

newTest$X..of.Delays.Weather <- WeatherResult
newTest$X..of.Delays.Weather[newTest$X..of.Delays.Weather<=0] <- 0

# Merge the data prediction and original data for Shiny
newdf <- rbind(origData, newTest)