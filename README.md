# ProgrammingAssignment3

The script run_analysis.R perform the following steps:

1. Download and unzipp the data. 

2. Read the data from txt files and save it to data frame. 
Test data frames: subject_test, x_test, y_test. 
Training data frames: subject_train, x_train, y_train.
Features data frame: features.

3. Merge the training and the test sets and create one data set called merged_set.

4. Rename levels of activity_type column in merged_set: 
1 - WALKING, 2 - WALKING_UPSTAIRS, 3 - WALKING_DOWNSTAIRS, 4 - SITTING, 5 - STANDING, 6 - LAYING.

5. Label the merged_set with descriptive variable names from features set.

6. Create data set called short_df with the measurements only on the mean and standard deviation. 

7. Create an independent tidy data set called tidy_df with the average of each variable for each activity and each subject.  

8. Save tidy_df as .txt file 
