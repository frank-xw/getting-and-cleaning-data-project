## Getting and Cleaning Data Course Project - John Hopkins Coursera
## Author: Xinyang Wang



# Load needed packages
library(dplyr)
library(reshape2)

# Download .zip data file and unzip
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFile <- "UCI HAR Dataset.zip"
if (!file.exists(dataFile)) {
        download.file(url, dataFile, method = "curl") 
}
if (!file.exists("UCI HAR Dataset")) {
        unzip(dataFile)
}


## 1.Merges the training and the test sets to create one data set.

# Read activity lables, features and data of test and training sets

xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subtest <- read.table("UCI HAR Dataset/test/subject_test.txt")
subtrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")

# Combine seperate data from above to one data set
bindtest <- cbind(subtest, ytest, xtest)
bindtrain <- cbind(subtrain, ytrain, xtrain)
bind <- rbind(bindtest, bindtrain)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement.

# Read features 
features <- read.table("UCI HAR Dataset/features.txt")

# Extract the mean and standard diviation
extract <- c(1, 2, grep("mean|std", features$V2) + 2)
mbind <- bind[, extract]

## 3.Uses descriptive activity names to name the activities in the data set

# Replace activity value with name
for (i in 1:nrow(mbind)){
        if(mbind[i, 2] == 1) {
                mbind[i, 2] <- "walking"
        }
        if(mbind[i, 2] == 2) {
                mbind[i, 2] <- "walking_upstairs"
        }
        if(mbind[i, 2] == 3) {
                mbind[i, 2] <- "walking_downstairs"
        }
        if(mbind[i, 2] == 4) {
                mbind[i, 2] <- "sitting"
        }
        if(mbind[i, 2] == 5) {
                mbind[i, 2] <- "standing"
        }
        if(mbind[i, 2] == 6) {
                mbind[i, 2] <- "laying"
        }
}

## 4.Appropriately labels the data set with descriptive variable names.

# Set the column name with feature names
varnames <- c("subject", "activity", grep("mean|std", features$V2, value = TRUE))
colnames(mbind) <- varnames

# Make feature names more clear
names(mbind) <- sub("^t", "timeDomain", names(mbind))
names(mbind) <- sub("^f", "frequencyDomain", names(mbind))
names(mbind) <- sub("Acc", "Accelerometer", names(mbind))
names(mbind) <- sub("Gyro", "Gyroscope", names(mbind))
names(mbind) <- sub("Mag", "Magnitude", names(mbind))
names(mbind) <- sub("mean", "Mean", names(mbind))
names(mbind) <- sub("std", "StandardDeviation", names(mbind))
names(mbind) <- sub("Freq", "Frequency", names(mbind))
names(mbind) <- gsub("-", "", names(mbind))
names(mbind) <- sub("\\(\\)", "", names(mbind))
names(mbind) <- sub("BodyBody", "Body", names(mbind))

## 5.From the data set in step 4, creates a second, independent tidy data set 
##   with the average of each variable for each activity and each subject.

# Group the data set by mean method and arrange by activity
tided <- aggregate(. ~ subject + activity, data = mbind, mean)

# Output file

write.table(tided, file = "tided_data.txt", quote = FALSE, row.names = FALSE)