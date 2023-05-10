install.packages("caTools")	 # For sampling the dataset
install.packages("randomForest") # For implementing random forest algorithm
library(caTools)
library(randomForest)
split <- sample.split(iris, SplitRatio = 0.7)
split
train <- subset(iris, split == "TRUE")
test <- subset(iris, split == "FALSE")
set.seed(120) # Setting seed
classifier_RF = randomForest(x = train[-5],
							y = train$Species,
							ntree = 500)
classifier_RF
y_pred = predict(classifier_RF, newdata = test[-5])
confusion_mtx = table(test[, 5], y_pred)
confusion_mtx
plot(classifier_RF)
importance(classifier_RF)
varImpPlot(classifier_RF)
