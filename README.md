# Getting and Cleaning Data: Course Project

## The code
The run_analysis.R file contains the code for creating the tidy dataset.  This code reads a set of data and labels that are stored in multiple files and joins them together into a coherent dataframe.  It also summarizes a subset of the columns to generate a tidy dataset.

## Processing
We carried out the following processing to generate the tidy dataset.
* Merge the training and the test sets (X_train and X_test) to create one dataset called "data" and merged the y_train and y_test to create a dataset called "activities". 
* Extract only the measurements on the mean and standard deviation for each measurement.  We did this by reading the feature_names from the "features.txt" files and using grep to find all features_names that have either "mean" or "std" in the names.  We then kept only those columns in the dataset.
* Appropriately label the data set with descriptive variable names using the features_names read from "features.txt".
* Use descriptive activity names to name the activities in the dataset using the activities read from the "activity_labels.txt" file.
* Create a second, independent tidy data set with the average of each variable for each activity and each subject.  We grouped all of the observations in two levels: first by activity (6 types), and second by subject (30 people).  For each of the resulting combinations, we compute the mean of each of the 79 variables.  Thus the output data has 180 rows and 81 columns (79 variables plus activities and subjects).

## The tidiness of the output data
The output dataframe "tidy_data" is tidy in a number of ways:
* Each row contains only one observation.
* Each column contains only one variable.
* The column names are descriptive in that they succinctly describe the information measured by the particular variable.  These variable names are also consistent with the feature names stored in the "features.txt" file of the original dataset, which promotes consistency.

## Reading the tidy_data file
In order to read and view the output "tidy_data.txt" file, use the following code:

tidy_data <- read.table("tidy_data.txt", header = TRUE)
View(tidy_data)