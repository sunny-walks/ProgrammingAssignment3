############################# Download, unzipp and the data
path<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" ## URL for data
zip_archive <-download.file(path,"./data.zip", method = "curl") ## Download data
unzip("./data.zip", exdir = "./SunnyWalksAssignement") ## Unzip data

############################# Read the data from txt files and save to data frames
## Test data
subject_test<- read.table("./SunnyWalksAssignement/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_test<- read.table("./SunnyWalksAssignement/UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test<- read.table("./SunnyWalksAssignement/UCI HAR Dataset/test/Y_test.txt", header = FALSE)
## Training data
subject_train<- read.table("./SunnyWalksAssignement/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
x_train<- read.table("./SunnyWalksAssignement/UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train<- read.table("./SunnyWalksAssignement/UCI HAR Dataset/train/Y_train.txt", header = FALSE)
## Features
features<- read.table("./SunnyWalksAssignement/UCI HAR Dataset/features.txt", header = FALSE)

############################# Next steps are numbered according to the order in the task.

############################# 1. Merges the training and the test sets to create one data set
test_set <- cbind(cbind(subject_test, y_test), x_test) ##  Create single test set
train_set <- cbind(cbind(subject_train, y_train), x_train) ## Create single training set
merged_set <- rbind(test_set, train_set) ## Merge test and training datasets

############################# 3. Uses descriptive activity names to name the activities in the data set 
## 1 - WALKING, 2 - WALKING_UPSTAIRS, 3 - WALKING_DOWNSTAIRS, 4 - SITTING, 5 - STANDING, 6 - LAYING
merged_set[,2] <- factor(merged_set[,2]) ## change class of column with activity types
library(plyr) ## load plyr package for further use revalue function
merged_set[,2]<- revalue(merged_set[,2], c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS", "4"="SITTING", "5"="STANDING", "6"="LAYING"))

############################# 4. Appropriately labels the data set with descriptive variable names.
clean_features <- gsub("\\(\\)", "", features[,2]) ## Remove brackets from names
colnames(merged_set)<- c("person_id", "activity_type", as.character(clean_features)) ## Create vector with names

############################# 2. Extracts only the measurements on the mean and standard deviation for each measurement
names_mean_std <- grep("\\bstd\\b|\\bmean\\b", colnames(merged_set), value=TRUE) ## create a vector with column names that consist mean and std
names<- c("person_id", "activity_type", names_mean_std) ## add person_id and activity_type columns names
short_df<- subset(merged_set, select = names) ##extract new data frame

############################# 5.From the data set in step 4, creates a second, independent tidy data set 
############################# with the average of each variable for each activity and each subject.
short_df[,1] <- factor(short_df[,1]) ## Change class of column with person_id
tidy_df <- aggregate(short_df, by=list(person_id=short_df$person_id, activity_type=short_df$activity_type), FUN = mean,  drop = TRUE) ## Form the average for each activity and each subject
tidy_df <- subset(tidy_df, select = -c(3:4) ) ##Delete NA colums left after aggregate function
write.table(tidy_df, file = "./SunnyWalksAssignement/tidy.txt", row.names=FALSE) ## Save tidy dataset
