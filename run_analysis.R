library(dplyr)

# This code reads a set of data and labels that are stored in multiple files and joins them together into a coherent dataframe.
# It also summarizes a subset of the columns to generate a tidy dataset.

# Merge the training and the test sets to create one data set.
# Read the train data
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt",header=FALSE,sep="")
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt",header=FALSE)

# Read the test data
X_test <- read.csv("UCI HAR Dataset/test/X_test.txt",header=FALSE,sep="")
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt",header=FALSE)

# Merge the datasets together by rows
data <- rbind(X_train,X_test)

# Merge the activities by rows
activities <- rbind(y_train,y_test)
activities <- activities[[1]]

# Read the column names
feature_names <- read.csv("UCI HAR Dataset/features.txt",header=FALSE,sep="")
feature_names <- as.character(feature_names$V2)

# Extract only the measurements on the mean and standard deviation for each measurement.
# Get the columns that have the word "mean"
mean_columns <- grep("mean",feature_names)
# Get the columns that have the word "std"
std_columns <- grep("std",feature_names)
# We sort the column numbers so that the order is the same as in the original data
col_numbers = sort(c(mean_columns,std_columns))
feature_names = feature_names[col_numbers]
data <- data[,col_numbers]

# Appropriately label the data set with descriptive variable names.
# We use the feature_names as the labels for the variable names.
colnames(data) <- feature_names

# Use descriptive activity names to name the activities in the data set
# Read the activity labels
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt",header=FALSE,sep="")
activity_labels <- as.character(activity_labels$V2)
# Add the activities to the dataframe
data <- mutate(data,activities = factor(activities,labels = activity_labels))

# From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
# Read the subject data.
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
subjects <- rbind(subject_train,subject_test)
subjects <- subjects[[1]]
# Add the subjects to the dataframe
data <- mutate(data,subjects = factor(subjects))

# Create the tidy_data using the summarize_each function from dplyr
tidy_data = data %>% group_by(activities,subjects) %>% summarise_each(funs(mean))

# Write out the table
write.table(tidy_data,file="tidy_data.txt",row.name=FALSE)

# Read the table back in to view the result
tidy_data <- read.table("tidy_data.txt", header = TRUE)
View(tidy_data)