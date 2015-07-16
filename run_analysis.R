# 
# library(plyr)
library(dplyr)
message("Current working directory is: ", getwd())
data_directory <- 'UCI HAR Dataset'
message("Checking if the data directory \"", data_directory, "\" exists or not.")

# cd to the data directory abort of the data directory does not exist!
stopifnot(file.exists('UCI HAR Dataset'))

setwd(data_directory)
message("Changing working directory to data directory: ", getwd())

message("Reading in the list of features...")
features <- read.table('features.txt', 
                     col.names=c("id", "raw_name"),
                     colClasses = c("integer", "character"))
# debug logging
message("Found ", nrow(features), " features.")

message("Looking for feature denoting mean or standard deviation...")
features <- features %>%
  # get only the mean and standard deviation columns
  filter(grepl("std()", raw_name, fixed = TRUE) | grepl("mean()", raw_name, fixed = TRUE))
message("Found ", nrow(features), " varibles realted to mean or standard deviation")

message("Building user friendly column names from these feature names...")
features$name <- features$raw_name
features$name <- sub("^t", "time domain ", features$name)
features$name <- sub("^f", "frequency domain ", features$name)
features$name <- sub("BodyAccJerk", "body linear acceleration ", features$name)
features$name <- sub("BodyGyroJerk", "body angular velocity ", features$name)
features$name <- sub("BodyAcc", "body acceleration ", features$name)
features$name <- sub("GravityAcc", "gravity acceleration ", features$name)
features$name <- sub("BodyGyro", "body gyroscopic signal ", features$name)
features$name <- sub("Body", "whole ", features$name)
features$name <- sub("(.*)-mean\\(\\)", "mean of \\1", features$name)
features$name <- sub("(.*)-std\\(\\)", "standard deviation of \\1", features$name)
features$name <- sub("Mag$", "magnitude", features$name)
features$name <- sub("-([XYZ])", "along \\1 axis", features$name)
## dim(features); head(features); tail(features)
## features

message("Read the activity names...")
activities <- read.table('activity_labels.txt',
                       col.names = c("id", "raw_name"),
                       colClasses = c("integer", "character"))
message("Building user friendly activity names...")
activities$name <- activities$raw_name
activities$name <- tolower(activities$name)
activities$name <- gsub("_", " ", activities$name)
activities$name <- paste0(toupper(substr(activities$name, 1, 1)), substr(activities$name, 2, nchar(activities$name)))
## activities

message("Reading in the test data sets")
message("\t Read in subjects...")
test.subjects <- read.table("test/subject_test.txt", col.names = c("subject"))
message("\t\t found ", nrow(test.subjects), " subject variables")

message("\t Read in activities...")
test.activities <- read.table("test/y_test.txt", col.names = c("activity"))
message("\t\t found ", nrow(test.activities), " activity variables")

message("\t Read in data variables. This may take a long time...")
test.data <- read.table(file = "test/X_test.txt")
message("\t\t found ", nrow(test.data), " rows of data each with ", ncol(test.data), " data variables in each row")
message("\t\t Subsetting the data variables to extract variables related to mean and standard deviation")
test.data <- test.data[, features$id]
message("\t Combining the subject, activity and data variables together...")
test_data <- cbind(test.subjects, test.activities, test.data)

message("Reading in the training data sets")
message("\t Read in subjects...")
train.subjects <- read.table("train/subject_train.txt", col.names = c("subject"))
message("\t\t found ", nrow(train.subjects), " subject variables")

message("\t Read in activities...")
train.activities <- read.table("train/y_train.txt", col.names = c("activity"))
message("\t\t found ", nrow(train.activities), " activity variables")

message("\t Read in data variables. This may take a long time...")
train.data <- read.table(file = "train/X_train.txt")
message("\t\t found ", nrow(train.data), " rows of data each with ", ncol(train.data), " data variables in each row")
message("\t\t Subsetting the data variables to extract variables related to mean and standard deviation")
train.data <- train.data[, features$id]
message("\t Combining the subject, activity and data variables together...")
train_data <- cbind(train.subjects, train.activities, train.data)

message("Combining the test and training data sets into one...")
all_data <- rbind(test_data, train_data)
message("Combined data: rows=", nrow(all_data), ", cols=", ncol(all_data))

message("Now summarizing the data by activity and subject...")
result <- all_data %>%
  group_by(activity, subject) %>%
  summarise_each(funs(mean))

message("Setting the column names of the result to generated friendly column names")
colnames(result) <- c('activity', 'subject', paste("Mean of", features$name))

message("Writing the final results out to file: result.txt")
write.table(result, "../result.txt", row.names = FALSE)

message("Done!  Please review the results file in current directory.\n")
