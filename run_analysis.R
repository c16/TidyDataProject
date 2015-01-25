# run_analysis.R is a script to transform the 
# "Human Activity Recognition Using Smartphones Dataset" to a tidydata set for
# further analysis
#
# In brief it will:
# 1. Read the test and trial data sets
# 2. Format them to a tidy data set
# 3. Store this tidy data set to a file

library(dplyr)

# getData: returns a data frame representing the experimental data
#
# Input: dataSet - a vector comprised of file names for the dataset files:
#                  [1] subject - a file containing the subject who performed the activity
#                  [2] data - a file for the observations for each activity
#                  [3] activity - a file for the activity labels
#
# Output: a data frame of observations. Each observation has a subject id, 
#         an activity  and numerous measurements
getData <- function(dataSet) {
  subject <- read.table(dataSet[1], col.names=c("Subject"))
  activity <- read.table(dataSet[3], col.names=c("level"))
  data <- read.table(dataSet[2])
  colnames(data) <- features

  cbind(subject, 
        Activity = factor(activity$level, levels=activityLabels$level, labels=activityLabels$label), 
        data )
}

# Read the activity labels from a file and form into a data frame with columns:
# level - represents the activity number
# label - represents the text for the activity
activityLabels <- read.table("activity_labels.txt", col.names=c("level", "label"))

# Read the features from features.txt and assign to the features variable.
# Note that features.txt is inconsistent in that some of the features are repeated,
# force each feature to be unique using make.unique(...)
features <- make.unique( read.table("features.txt", stringsAsFactors=FALSE)[,2] )

# Make a vector of file names for the test data
testData <- c("test/subject_test.txt", "test/X_test.txt", "test/y_test.txt")

# Make a vector of file names for the training data
trainData <- c("train/subject_train.txt", "train/X_train.txt", "train/y_train.txt")

# Make a data frame tbl is the test and trial data merged
mergedData <- tbl_df( rbind( getData(testData), getData(trainData) ) )

# Now use dplyr piping to:
# make a table from mergedData containing Subject, Activity, mean and std measurements
# group this table first by subject and then activity
# take the mean of the rest of the columns
# assign this tidy data set to the result variable
result <- mergedData %>% 
          select(Subject:Activity, contains("mean()"), contains("std()")) %>%
          group_by(Subject, Activity) %>% 
          summarise_each(funs(mean))

# Finally write the tidy dataset to a file called "results.txt"
write.table(result, "result.txt", row.names=FALSE)
