# Read Data set
state_CA <- read.csv("C:/Users/tanve/OneDrive/Desktop/DS/State_CA.csv")

#Print the Head and tail of the Data set
head(state_CA)
tail(state_CA)


#Check Missing Values
is.na(state_CA)

#insert some missing value in to add prediction result.
state_CA[nrow(state_CA) + 30,] = NA

#print Tail to check whether missing value added or not
tail(state_CA,35)

# Building The Linier Regression Model
California = lm(New_Case ~ day , data = state_CA)

summary(California)

Prediction_nDays <- (-1606.974 + (37.904 * 300)) # here we predict the result of 300th day

Prediction_nDays

# Correlation 

cor(State_CA$day,State_CA$'New_Case')

#Actual Result in Data set of 300th day
state_CA$New_Case[300]

#Prediction the result next 30 days
pred <- c(0)
m = 1

for(x in 325:354){
  pred[m] <- -1606.974 + (37.904 * x)
  m = m + 1
}
print(pred)

# visualize the data
par(mfrow = c(2,2))
  plot(California)

#Improve model accuracy  
California2 <- lm(New_Case ~ day + I(day ^ 2) + I(day ^3) + I(day ^4) + I(day ^5) + I(day ^6)  , data = state_CA)
summary(California2)

# visualize the data
par(mfrow = c(2,2))
  plot(California2)


set.seed(100)
trainingRowIndex <- sample(1:nrow(State_CA), 0.8*nrow(State_CA))
trainingData <- State_CA[trainingRowIndex, ]
testData  <- State_CA[-trainingRowIndex, ]

California2 <- lm(New_Case ~ day + I(day ^ 2) + I(day ^3) + I(day ^4) + I(day ^5) + I(day ^6)  , data = State_CA)
newcasePred <- predict(California2, testData)
summary (California2)
  
  
actuals_preds <- data.frame(cbind(actuals=testData$New_Case, predicteds=newcasePred))
correlation_accuracy <- cor(actuals_preds)
correlation_accuracy


