# Overview
The data produced by 'Human Activity Recognition Using Smartphones Dataset' is large and difficult to read. To summarise the data as a tidy data set an R script called run_analysis.R can be used.

# Instructions
Ensure the prerequisites have a been met and then run the script. The script should be run as is. Any error messages will be due to changes to the format of the data set or installation after the analysis script was written.

## Prerequisites
### 1. Files

To run the analysis the following files are needed:

* 'features.txt': List of all features.
 
* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/subject_train.txt': Identifies the subject who performed the activity

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/subject_test.txt': Identifies the subject who performed the activity

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

* 'run_analysis.R': The tidy data analysis script

The root of this directory will from now on be referred to as the *analysis directory*.

### 2. R
R version 3.1.2 must be installed. The script has not been tested with other versions.

### 3. dplyr
The script uses the dplyr package. The script has only been tested with dplyr version 0.3.0.2.

## Run
1. Ensure the prerequisites have been met
2. Open R or RStudio
3. Set the working directory to the *analysis directory*. Refer to R or RStudio for how to do this.
4. Run the analysis script by typing the following in the console window

source("run_analysis.R")

5. Check that the file 'result.txt' has been created in the *analysis directory*

*Note:* The use of dplyr may mean that some warnings are shown the first time the script is run.


