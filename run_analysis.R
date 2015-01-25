library(dplyr)

getData <- function(testPath, activityLabels, features, dataSet) {
  subject <- read.table(paste(testPath, dataSet[1], sep=''), col.names=c("Subject"))
  activity <- read.table(paste(testPath, dataSet[3], sep=''), col.names=c("level"))
  data <- read.table(paste(testPath, dataSet[2], sep=''))
  colnames(data) <- features

  cbind(subject, 
        Activity=factor(activity$level, levels=activityLabels$level, labels=activityLabels$label), 
        data )
}

testPath = "UCI HAR Dataset/"
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("level", "label"))

features <- read.table(paste(testPath, "features.txt", sep=''), stringsAsFactors=FALSE)[,2]
features <- make.unique(features)

testData <- c("test/subject_test.txt", "test/X_test.txt", "test/y_test.txt")
trainData <- c("train/subject_train.txt", "train/X_train.txt", "train/y_train.txt")
allData <- rbind(getData(testPath, activityLabels, features, testData),
                 getData(testPath, activityLabels, features, trainData))

data <- tbl_df(allData)
std_mean <- select(data, Subject:Activity, contains("mean()"), contains("std()"))

result <- std_mean %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
result




