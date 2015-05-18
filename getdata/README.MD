---
title: "README.MD"
author: "Cthugha"
date: "Monday, May 18, 2015"
output: html_document
---

# Getting and Cleaning Data Course Project
To run this function, type in R:
```
source("run_analysis.R")
run_analysis()
```

## Requirements:
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive activity names.

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Download and unzip original data source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### The data set is organized according to the logic as below:

Take test set files for example:

The subject_test text file contains 1 column of 9 individuals.
The y_test text file contains 1 column of the Activities of 9 individuals.
The X_test text file contains 561 columns of the data of 9 individuals.


### Q1. Merge the training and the test data sets.
use rbind() to merge training and test data sets
use colnames() to assign column names
use cbind() to merge the 3 dataframes into 1 dataframe data_merged

### Q2. Extracts the measurements on the mean and standard deviation for each measurement.
use grep() to get the indexes of column names that match "mean" or "std"
subset the columns of merged data by the indexes to get filtered data

### Q3. Uses descriptive activity names to name the activities in the data set.
use colnames() to rename columns of activity_labels
use merge() to merge the dataframe filtered data with the activity_labels

### Q4. Appropriately labels the data set with descriptive variable names. 
use gsub() to replace abbreviations with full words in the column names:
't' to denote time, 'f' to indicate frequency domain signals
sensor signals (accelerometer and gyroscope), Acc and Gyro
'Mag' for magnitude

### Q5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
use tranform() convert the columns ID and ActivityIndex to factors
use aggregate() to group the data by ID and ActivityIndex
use write.table to write the data to a text file



