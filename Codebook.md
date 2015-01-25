# Codebook Version 1.0
This codebook refers to the tidy data set produced by the run_analysis.R script on the test and trial data sets of the 'Human Activity Recognition Using Smartphones Dataset'.


# Dataset Format
The dataset produced by run_analysis.R is a table with columns subject, Activity and measurements.

The table is presented as firstly sorted by Subject. Then each Subject is further sorted by activity. The measurements columns are thus the mean of each measurement for each activity carried out by each subject.

There are 30 subjects and 6 activities. This gives 180 rows (or observersations).

There are 66 measurements. This gives 68 variables (including Subject and Activity).

# Variables and meanings
* Subject: A number identifying the person who performed the activity. The range is 1 to 30. Note that the person is identified using a number to keep their real identity secret.

* Activity: Each activity is a string. There are 6 activities in total. The list of activities is WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

* tBodyAcc-mean()-X : mean of body acceleration time domain signal, X axis

* tBodyAcc-mean()-Y : mean of body acceleration time domain signal, Y axis

* tBodyAcc-mean()-Z : mean of body acceleration time domain signal, Z axis

* tGravityAcc-mean()-X : mean of gravity acceleration time domain signal, X axis

* tGravityAcc-mean()-Y : mean of gravity acceleration time domain signal, Y axis

* tGravityAcc-mean()-Z : mean of gravity acceleration time domain signal, Z axis

* tBodyAccJerk-mean()-X : mean of body acceleration jerk time domain signal, X axis

* tBodyAccJerk-mean()-Y : mean of body acceleration jerk time domain signal, Y axis

* tBodyAccJerk-mean()-Z : mean of body acceleration jerk time domain signal, Z axis

* tBodyGyro-mean()-X : mean of body gyroscope time domain signal, X axis

* tBodyGyro-mean()-Y : mean of body gyroscope time domain signal, Y axis

* tBodyGyro-mean()-Z : mean of body gyroscope time domain signal, Z axis

* tBodyGyroJerk-mean()-X : mean of body gyroscope jerk time domain signal, X axis

* tBodyGyroJerk-mean()-Y : mean of body gyroscope jerk time domain signal, Y axis

* tBodyGyroJerk-mean()-Z : mean of body gyroscope jerk time domain signal, Z axis

* tBodyAccMag-mean() : mean of body acceleration magnitude time domain signal, X axis

* tGravityAccMag-mean() : mean of body acceleration magnitude time domain signal, Y axis

* tBodyAccJerkMag-mean() : mean of body acceleration magnitude time domain signal, Z axis

* tBodyGyroMag-mean() : mean of body gyroscope magnitude time domain signal

* tBodyGyroJerkMag-mean() : mean of body gyroscope jerk magnitude time domain signal

* fBodyAcc-mean()-X : mean of body acceleration signal fourier transform, X axis

* fBodyAcc-mean()-Y : mean of body acceleration signal fourier transform, Y axis

* fBodyAcc-mean()-Z : mean of body acceleration signal fourier transform, Z axis

* fBodyAccJerk-mean()-X : mean of body acceleration jerk fourier transform, X axis

* fBodyAccJerk-mean()-Y : mean of body acceleration jerk fourier transform, Y axis

* fBodyAccJerk-mean()-Z : mean of body acceleration jerk fourier transform, Z axis

* fBodyGyro-mean()-X : mean of body gyroscope fourier transform, X axis

* fBodyGyro-mean()-Y : mean of body gyroscope fourier transform, Y axis

* fBodyGyro-mean()-Z : mean of body gyroscope fourier transform, Z axis

* fBodyAccMag-mean() : mean of body acceleration magnitude fourier transform

* fBodyBodyAccJerkMag-mean() : mean of body acceleration jerk magnitude fourier transform

* fBodyBodyGyroMag-mean() : mean of body gyroscope magnitude fourier transform

* fBodyBodyGyroJerkMag-mean() : mean of body gyroscope jerk magnitude

* tBodyAcc-std()-X : standard deviation of body acceleration time domain signal, X axis

* tBodyAcc-std()-Y : standard deviation of body acceleration time domain signal, Y axis

* tBodyAcc-std()-Z : standard deviation of body acceleration time domain signal, Z axis

* tGravityAcc-std()-X : standard deviation of gravity acceleration time domain signal, X axis

* tGravityAcc-std()-Y : standard deviation of gravity acceleration time domain signal, Y axis

* tGravityAcc-std()-Z : standard deviation of gravity acceleration time domain signal, Z axis

* tBodyAccJerk-std()-X : standard deviation of body acceleration jerk time domain signal, X axis

* tBodyAccJerk-std()-Y : standard deviation of body acceleration jerk time domain signal, Y axis

* tBodyAccJerk-std()-Z : standard deviation of body acceleration jerk time domain signal, Z axis

* tBodyGyro-std()-X : standard deviation of body gyroscope time domain signal, X axis

* tBodyGyro-std()-Y : standard deviation of body gyroscope time domain signal, Y axis

* tBodyGyro-std()-Z : standard deviation of body gyroscope time domain signal, Z axis

* tBodyGyroJerk-std()-X : standard deviation of body gyroscope jerk time domain signal, X axis

* tBodyGyroJerk-std()-Y : standard deviation of body gyroscope jerk time domain signal, Y axis

* tBodyGyroJerk-std()-Z : standard deviation of body gyroscope jerk time domain signal, Z axis

* tBodyAccMag-std() : standard deviation of body acceleration magnitude time domain signal

* tGravityAccMag-std() : standard deviation of gravity acceleration magnitude time domain signal

* tBodyAccJerkMag-std() : standard deviation of body acceleration jerk magnitude time domain signal

* tBodyGyroMag-std() : standard deviation of body gyroscope magnitude time domain signal

* tBodyGyroJerkMag-std() : standard deviation of body gyroscope jerk magnitude time domain signal

* fBodyAcc-std()-X : standard deviation of body acceleration signal fourier transform, X axis

* fBodyAcc-std()-Y : standard deviation of body acceleration signal fourier transform, Y axis

* fBodyAcc-std()-Z : standard deviation of body acceleration signal fourier transform, Z axis

* fBodyAccJerk-std()-X : standard deviation of body acceleration jerk, X axis

* fBodyAccJerk-std()-Y : standard deviation of body acceleration jerk, Y axis

* fBodyAccJerk-std()-Z : standard deviation of body acceleration jerk, Z axis

* fBodyGyro-std()-X : standard deviation of body gyroscope, X axis

* fBodyGyro-std()-Y : standard deviation of body gyroscope, Y axis

* fBodyGyro-std()-Z : standard deviation of body gyroscope, Z axis

* fBodyAccMag-std() : standard deviation of body acceleration magnitude signal fourier transform

* fBodyBodyAccJerkMag-std() : standard deviation of body acceleration jerk magnitude signal fourier transform

* fBodyBodyGyroMag-std() : standard deviation of body gyroscope magnitude signal fourier transform

* fBodyBodyGyroJerkMag-std() : standard deviation of body gyroscope jerlk magnitude signal fourier transform
