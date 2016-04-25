Getting and Cleaning Data 
=========================


## Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers
on a series of yes/no questions related to the project.

You will be required to submit:

1.The submitted data set is tidy. 
2.The Github repo contains the required scripts.
3.GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4.The README that explains the analysis files is clear and understandable.
5.The work submitted for this project is the work of the student who submitted it.

You should create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

## What you find in this repository

* CodeBook.md: information about raw and tidy data set
* readme.md: this file
* run_analysis.R: R script to transform data set in a tidy data

## How to create the tidy data set

1. clone this repository
2. download (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. unzip raw data and copy the directory `UCI HAR Dataset` to this repository
4. open a R console and set the working directory to the repository root
5. source run_analisys.R script


