
## Merges the training and the test sets to create one data set.
run_analysis <- function () {
        ## read the data
        ## merge the data
        ## extract the mean and sd for each meaturement
        ## rename
        ## 
        setwd("E:/data/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")
        features <- as.data.frame(read.table("features.txt"))
        
        X_test <- read.table("test/X_test.txt")
        y_test <- read.table("test/y_test.txt")
        subject_test <- read.table("test/subject_test.txt")
        X_train <- read.table("train/X_train.txt")
        y_train <- read.table("train/y_train.txt")
        subject_train <- read.table("train/subject_train.txt")
        
        test<-cbind(X_test, y_test, subject_test)
        train<-cbind(X_train, y_train, subject_train)
        data<-rbind(test, train)
        
## Uses descriptive activity names to name the activities in the data set
        f<-as.character(features$V2)
        names(data)<-c(f, "y", "subject")
        
## Extracts only the measurements on the mean and standard deviation for each measurement. 
        f_mean<-grep("mean", features$V2)
        X_train[,f_mean]
        y_train[,f_mean]
        
        
        f_std<-grep("std", features$V2)


        
        ##

        
        ## don't know how to do T_T
        
}
## Appropriately labels the data set with descriptive variable names. 
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

