library(randomForest)
iris <- read.csv("iris.txt")
modfit <- randomForest(Species ~ ., data=iris)