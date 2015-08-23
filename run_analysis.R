# we will use dplyr, reshape2 and plyr package to perform this script

# install.packages("dplyr")

library("dplyr")

# install.packages("reshape2")

library("reshape2")

# install.packages("plyr")

library("plyr")

# First we download and unzip the file from the URL provided by the project 

# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "coursera_project.zip", method = "curl")

#unzip("coursera_project.zip")

# First question: Merges the training and the test sets to create one data set. 

# We read the files , convert to tables and put them together using rbind. At the end of this set of instructions we have 
# one Join table for each of the files we have loaded: x_join, y_join etc...

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
x_train_tbl = as.tbl(x_train)
x_test_tbl = as.tbl(x_test)
x_join = rbind(x_train_tbl, x_test_tbl)


y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt", header = FALSE)
y_train_tbl = as.tbl(y_train)
y_test_tbl = as.tbl(y_test)
y_join = rbind(y_train_tbl, y_test_tbl)

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subject_train_tbl = as.tbl(subject_train)
subject_test_tbl = as.tbl(subject_test)
subject_join = rbind(subject_test_tbl, subject_train_tbl)

body_acc_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", header = FALSE)
body_acc_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", header = FALSE)
body_acc_x_test_tbl = as.tbl(body_acc_x_test)
body_acc_x_train_tbl = as.tbl(body_acc_x_train)
body_acc_x_join = rbind(body_acc_x_test_tbl, body_acc_x_train_tbl)

body_acc_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", header = FALSE)
body_acc_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", header = FALSE)
body_acc_y_test_tbl = as.tbl(body_acc_y_test)
body_acc_y_train_tbl = as.tbl(body_acc_y_train)
body_acc_y_join = rbind(body_acc_y_test_tbl, body_acc_y_train_tbl)

body_acc_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", header = FALSE)
body_acc_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", header = FALSE)
body_acc_z_test_tbl = as.tbl(body_acc_z_test)
body_acc_z_train_tbl = as.tbl(body_acc_z_train)
body_acc_z_join = rbind(body_acc_z_test_tbl, body_acc_z_train_tbl)

body_gyro_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", header = FALSE)
body_gyro_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", header = FALSE)
body_gyro_x_test_tbl = as.tbl(body_gyro_x_test)
body_gyro_x_train_tbl = as.tbl(body_gyro_x_train)
body_gyro_x_join = rbind(body_gyro_x_test_tbl, body_gyro_x_train_tbl)

body_gyro_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", header = FALSE)
body_gyro_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", header = FALSE)
body_gyro_y_test_tbl = as.tbl(body_gyro_y_test)
body_gyro_y_train_tbl = as.tbl(body_gyro_y_train)
body_gyro_y_join = rbind(body_gyro_y_test_tbl, body_gyro_y_train_tbl)


body_gyro_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", header = FALSE)
body_gyro_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", header = FALSE)
body_gyro_z_test_tbl = as.tbl(body_gyro_z_test)
body_gyro_z_train_tbl = as.tbl(body_gyro_z_train)
body_gyro_z_join = rbind(body_gyro_z_test_tbl, body_gyro_z_train_tbl)

total_acc_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", header = FALSE)
total_acc_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", header = FALSE)
total_acc_x_test_tbl = as.tbl(total_acc_x_test)
total_acc_x_train_tbl = as.tbl(total_acc_x_train)
total_acc_x_join = rbind(total_acc_x_test_tbl, total_acc_x_train_tbl)

total_acc_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", header = FALSE)
total_acc_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", header = FALSE)
total_acc_y_test_tbl = as.tbl(total_acc_y_test)
total_acc_y_train_tbl = as.tbl(total_acc_y_train)
total_acc_y_join = rbind(total_acc_y_test_tbl, total_acc_y_train_tbl)



total_acc_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", header = FALSE)
total_acc_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", header = FALSE)
total_acc_z_test_tbl = as.tbl(total_acc_z_test)
total_acc_z_train_tbl = as.tbl(total_acc_z_train)
total_acc_z_train = rbind(total_acc_z_test_tbl, total_acc_z_train_tbl)

# now we have merged all the files in data sets called "name of the file"_join
# We load features file to load the variables description
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
features_tbl = as.tbl(features)

# exercise 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

# We add descriptions to X_join(the ones from "features") and y_join and Subject tables

names(x_join) <- features[,2]
names(y_join)[1] = "Activity"
names(subject_join)[1] = "Subject"

# for each feature i extract the values for mean and sd and create one data set for each (i thought it would be useful)
x_join_tBodyAcc = x_join[,c(1, 2, 3, 4, 5, 6)]

x_join_tGravityAcc = x_join[,c(41, 42, 43, 44, 45, 46)]

x_join_tBodyAccJerk = x_join[,c(81, 82, 83, 84, 85, 86)]

x_join_tBodyGyro = x_join[,c(121, 122, 123, 124, 125, 126)]

x_join_tBodyGyroJerk = x_join[,c(161, 162, 163, 164, 165, 166)]

x_join_tBodyAccMag = x_join[,c(201, 202)]

x_join_tGravityAccMag = x_join[,c(214, 215)]

x_join_tBodyAccJerkMag- = x_join[,c(227, 228)]

x_join_tBodyGyroMag = x_join[,c(240, 241)]

x_join_tBodyGyroJerkMag = x_join[,c(253, 254)]

x_join_fBodyAcc = x_join[,c(266, 267, 268, 269, 270, 271)]

x_join_fBodyAccJerk = x_join[,c(345, 346, 347, 348, 349, 350)]

x_join_fBodyGyro = x_join[,c(424, 425, 426, 427, 428, 429)]

x_join_fBodyAccMag = x_join[,c(503, 504)]

x_join_fBodyBodyAccJerkMag = x_join[,c(516, 517)]

x_join_fBodyBodyGyroMag = x_join[,c(529, 530)]

x_join_fBodyBodyGyroJerkMag = x_join[,c(516, 517)]

# finally we create a data set with all the different features including activity and subject. 

all_data_join = cbind(x_join_tBodyAcc, x_join_tGravityAcc,x_join_tBodyAccJerk, x_join_tBodyGyro, x_join_tBodyGyroJerk, x_join_tBodyAccMag, x_join_tGravityAccMag, x_join_tBodyGyroMag, x_join_tBodyGyroJerkMag, x_join_fBodyAcc, x_join_fBodyAccJerk, x_join_fBodyGyro, x_join_fBodyAccMag, x_join_fBodyBodyAccJerkMag, x_join_fBodyBodyGyroMag, x_join_fBodyBodyGyroJerkMag , y_join, subject_join )

# to create the summary by Activity and Subject i ues melt and ddply functions 
# Reference: http://www.r-bloggers.com/using-r-quickly-calculating-summary-statistics-from-a-data-frame/


melted <- melt(all_data_join, id.vars=c("Activity", "Subject"))

all_data_join_melted = ddply(melted, c("Activity", "Subject", "variable"), summarise, mean = mean(value))

# all_data_join_melted contains the mean for each variable.



