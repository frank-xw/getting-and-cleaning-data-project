# Getting and Cleaning Data Project

This project is for the Johns Hopkins University's Coursera Getting and Cleaning Data course.

The data set is from [Human Activity Recognition Using Smartphones Dataset Version 1.0](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

## Project Requirement
* A [tidy data set](https://github.com/frankw12321/getting-and-cleaning-data-project/blob/master/tided_data.txt).
* A [R script](https://github.com/frankw12321/getting-and-cleaning-data-project/blob/master/run_analysis.R) that does the required operations.
* A [Code Book](https://github.com/frankw12321/getting-and-cleaning-data-project/blob/master/CodeBook.md) that explains variables and summaries calculated, along with units, and any other relevant information.
* A [README file](https://github.com/frankw12321/getting-and-cleaning-data-project/blob/master/README.md) that explains the R script.

## The R Script
The R script  (*run\_analysis.R*) retrieves the source data set and creates a final tidy data set (*tided\_data.txt*) which satisfied the requirement.   

### The script mainly contains following steps:
- Download data file and unzip
- Read activity lables, features and data of test and training sets
- Combine seperate data from above to one data set
- Extract the mean and standard deviation from measurements
- Replace activity value with name
- Set the column with feature names
- Make feature names more clear
- Group the data set by mean method and arrange by activity
- Output file