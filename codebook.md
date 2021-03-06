# Human Activity Recognition Using Smartphones Dataset

All transformations of from raw data are described in Readme.MD
Final output is a dataset that presents the average of each variable for each activity and each subject. 
Each variable is represented by a column, and each activity / subject is represented by a row. 
Therefore, 6 types of activities for 30 people give 180 observations. Variables - 68 columns:

**2 new columns:**
"person_id" - 1..30  - one value for each participant of the experiment 
"activity_type" - 6 levels - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

**66 columns average of features:**
"tBodyAcc-mean-X" 
"tBodyAcc-mean-Y"
"tBodyAcc-mean-Z"
"tBodyAcc-std-X"
"tBodyAcc-std-Y"
"tBodyAcc-std-Z"
"tGravityAcc-mean-X"
"tGravityAcc-mean-Y"
"tGravityAcc-mean-Z"
"tGravityAcc-std-X"
"tGravityAcc-std-Y"
"tGravityAcc-std-Z"
"tBodyAccJerk-mean-X"
"tBodyAccJerk-mean-Y"
"tBodyAccJerk-mean-Z"
"tBodyAccJerk-std-X"
"tBodyAccJerk-std-Y"
"tBodyAccJerk-std-Z"
"tBodyGyro-mean-X"
"tBodyGyro-mean-Y"
"tBodyGyro-mean-Z"
"tBodyGyro-std-X"
"tBodyGyro-std-Y"
"tBodyGyro-std-Z"
"tBodyGyroJerk-mean-X"
"tBodyGyroJerk-mean-Y"
"tBodyGyroJerk-mean-Z"
"tBodyGyroJerk-std-X"
"tBodyGyroJerk-std-Y"
"tBodyGyroJerk-std-Z"
"tBodyAccMag-mean"
"tBodyAccMag-std"
"tGravityAccMag-mean"
"tGravityAccMag-std"
"tBodyAccJerkMag-mean"
"tBodyAccJerkMag-std"
"tBodyGyroMag-mean"
"tBodyGyroMag-std"
"tBodyGyroJerkMag-mean"
"tBodyGyroJerkMag-std"
"fBodyAcc-mean-X"
"fBodyAcc-mean-Y"
"fBodyAcc-mean-Z"
"fBodyAcc-std-X"
"fBodyAcc-std-Y"
"fBodyAcc-std-Z"
"fBodyAccJerk-mean-X"
"fBodyAccJerk-mean-Y"
"fBodyAccJerk-mean-Z"
"fBodyAccJerk-std-X"
"fBodyAccJerk-std-Y"
"fBodyAccJerk-std-Z"
"fBodyGyro-mean-X"
"fBodyGyro-mean-Y"
"fBodyGyro-mean-Z"
"fBodyGyro-std-X"
"fBodyGyro-std-Y"
"fBodyGyro-std-Z"
"fBodyAccMag-mean"
"fBodyAccMag-std"
"fBodyBodyAccJerkMag-mean"
"fBodyBodyAccJerkMag-std"
"fBodyBodyGyroMag-mean"
"fBodyBodyGyroMag-std"
"fBodyBodyGyroJerkMag-mean"
"fBodyBodyGyroJerkMag-std"

**Column names decoding:**
t - time measurements
f - frequency domain measurements
Body - body acceleration 
Gravity - gravity acceleration
Acc - measurements from the accelerometer
Gyro - measurements from the gyroscope
Jerk - udden movement acceleration
Mag - magnitude calculated using the Euclidean norm
mean - average
std - standard deviation
X/Y/Z - 3 axes of direction

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.
