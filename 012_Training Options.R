library(caret)
library(kernlab)

data(spam)

# Data splitting with createDataPartition()
inTrain <- createDataPartition(y=spam$type, p=0.75, list=FALSE)

training <- spam[inTrain, ]
testing <- spam[-inTrain, ]

modelFit <- train(type ~., data=training, method="glm")

args(train.default) # train options
args(trainControl)  # train control

# Setting the seed
set.seed(1235)
modelFit2 <- train(type ~., data=training, method="glm")
modelFit2

