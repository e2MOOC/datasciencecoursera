Coursera Assignment - Codebook
===================

###Dataset Source:
[UCI HAR Dataset](https://github.com/eterna2/datasciencecoursera/tree/master/UCI%20HAR%20Dataset)

###Data Used: 
[Test Data - Activity Labels](https://github.com/eterna2/datasciencecoursera/blob/master/UCI%20HAR%20Dataset/test/y_test.txt)
[Test Data - Subjects](https://github.com/eterna2/datasciencecoursera/blob/master/UCI%20HAR%20Dataset/test/subject_train.txt)
[Test Data - Measurements](https://github.com/eterna2/datasciencecoursera/blob/master/UCI%20HAR%20Dataset/test/X_test.txt)
[Training Data - Activity Labels](https://github.com/eterna2/datasciencecoursera/blob/master/UCI%20HAR%20Dataset/train/y_train.txt)
[Training Data - Subjects](https://github.com/eterna2/datasciencecoursera/blob/master/UCI%20HAR%20Dataset/train/subject_train.txt)
[Training Data - Measurements](https://github.com/eterna2/datasciencecoursera/blob/master/UCI%20HAR%20Dataset/train/X_train.txt)

###Data type: Wide-format

###No. of Observations: 180

###No. of Variables: 81

### Variable descriptions
#### Subject
Integer to indicate which subject the measurements are taken from. Ranges from 1 to 30.

#### Activity
Factor to indicate what is the corresponding activity type for the measurements. Activity can be one of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,SITTING, STANDING, and LAYING.

#### Measurements
The remaining variables are the `Mean` measurements for each Activity for each Subject. 

##### Measurements Glossary
The prefix `t` indicates the measurement to be in the time domain.
The prefix `f` indicates the measurement to be in the frequency domain.
The label `Gravity` indicates the measurement is due to the gravity.
The label `Body` indicates the measurement is due to the body movements.
The label `Acc` indicates the measurement comes from the accelerometer.
The label `Gyro` indicates the measurements comes from the gyroscope.
The label `mean` indicates the measurements is the mean value reading.
The label `std` indicates the measurements is the standard deviation of the reading.
The label `meanFreq` indicates the measurement is the weighted average of the frequency components to obtain a mean frequency.
The label `X`, `Y`, and `Z` indicates the direction of the measurements.

The remaining measurements 

`gravityMean`, 
`tBodyAccMean`, 
`tBodyAccJerkMean`, 
`tBodyGyroMean`, 
`tBodyGyroJerkMean`

are the measurements after averaging the signals in a signal window sample. 

###### Note
The measurement variables are the `Mean` measurements for each Activity for each Subject (e.g. mean of mean for `gravityMean` by Activity and Subject).

###Transformation Steps Taken:
1. Measurements that are not `mean` or `std` are removed.
2. Subjects, Activity, and Measurements were combined into a single Table for Test and Training data respectively.
3. Training data is appended to Test data.
4. Table is sorted by Subjects.
5. Numeric Activity labels were replaced by descriptive textual labels.
6. Table is Mean aggregated by Subject and Activity.


###Data Output: 
| #  | Variables                 | Type                                                                            |
|----|---------------------------|---------------------------------------------------------------------------------|
| 1  | Subject                   | Integer                                                                         |
| 2  | Activity                  | factor(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,SITTING, STANDING, LAYING) |
| 3  | tBodyAcc.mean.X           | double                                                                          |
| 4  | tBodyAcc.mean.Y           | double                                                                          |
| 5  | tBodyAcc.mean.Z           | double                                                                          |
| 6  | tBodyAcc.std.X            | double                                                                          |
| 7  | tBodyAcc.std.Y            | double                                                                          |
| 8  | tBodyAcc.std.Z            | double                                                                          |
| 9  | tGravityAcc.mean.X        | double                                                                          |
| 10 | tGravityAcc.mean.Y        | double                                                                          |
| 11 | tGravityAcc.mean.Z        | double                                                                          |
| 12 | tGravityAcc.std.X         | double                                                                          |
| 13 | tGravityAcc.std.Y         | double                                                                          |
| 14 | tGravityAcc.std.Z         | double                                                                          |
| 15 | tBodyAccJerk.mean.X       | double                                                                          |
| 16 | tBodyAccJerk.mean.Y       | double                                                                          |
| 17 | tBodyAccJerk.mean.Z       | double                                                                          |
| 18 | tBodyAccJerk.std.X        | double                                                                          |
| 19 | tBodyAccJerk.std.Y        | double                                                                          |
| 20 | tBodyAccJerk.std.Z        | double                                                                          |
| 21 | tBodyGyro.mean.X          | double                                                                          |
| 22 | tBodyGyro.mean.Y          | double                                                                          |
| 23 | tBodyGyro.mean.Z          | double                                                                          |
| 24 | tBodyGyro.std.X           | double                                                                          |
| 25 | tBodyGyro.std.Y           | double                                                                          |
| 26 | tBodyGyro.std.Z           | double                                                                          |
| 27 | tBodyGyroJerk.mean.X      | double                                                                          |
| 28 | tBodyGyroJerk.mean.Y      | double                                                                          |
| 29 | tBodyGyroJerk.mean.Z      | double                                                                          |
| 30 | tBodyGyroJerk.std.X       | double                                                                          |
| 31 | tBodyGyroJerk.std.Y       | double                                                                          |
| 32 | tBodyGyroJerk.std.Z       | double                                                                          |
| 33 | tBodyAccMag.mean          | double                                                                          |
| 34 | tBodyAccMag.std           | double                                                                          |
| 35 | tGravityAccMag.mean       | double                                                                          |
| 36 | tGravityAccMag.std        | double                                                                          |
| 37 | tBodyAccJerkMag.mean      | double                                                                          |
| 38 | tBodyAccJerkMag.std       | double                                                                          |
| 39 | tBodyGyroMag.mean         | double                                                                          |
| 40 | tBodyGyroMag.std          | double                                                                          |
| 41 | tBodyGyroJerkMag.mean     | double                                                                          |
| 42 | tBodyGyroJerkMag.std      | double                                                                          |
| 43 | fBodyAcc.mean.X           | double                                                                          |
| 44 | fBodyAcc.mean.Y           | double                                                                          |
| 45 | fBodyAcc.mean.Z           | double                                                                          |
| 46 | fBodyAcc.std.X            | double                                                                          |
| 47 | fBodyAcc.std.Y            | double                                                                          |
| 48 | fBodyAcc.std.Z            | double                                                                          |
| 49 | fBodyAcc.meanFreq.X       | double                                                                          |
| 50 | fBodyAcc.meanFreq.Y       | double                                                                          |
| 51 | fBodyAcc.meanFreq.Z       | double                                                                          |
| 52 | fBodyAccJerk.mean.X       | double                                                                          |
| 53 | fBodyAccJerk.mean.Y       | double                                                                          |
| 54 | fBodyAccJerk.mean.Z       | double                                                                          |
| 55 | fBodyAccJerk.std.X        | double                                                                          |
| 56 | fBodyAccJerk.std.Y        | double                                                                          |
| 57 | fBodyAccJerk.std.Z        | double                                                                          |
| 58 | fBodyAccJerk.meanFreq.X   | double                                                                          |
| 59 | fBodyAccJerk.meanFreq.Y   | double                                                                          |
| 60 | fBodyAccJerk.meanFreq.Z   | double                                                                          |
| 61 | fBodyGyro.mean.X          | double                                                                          |
| 62 | fBodyGyro.mean.Y          | double                                                                          |
| 63 | fBodyGyro.mean.Z          | double                                                                          |
| 64 | fBodyGyro.std.X           | double                                                                          |
| 65 | fBodyGyro.std.Y           | double                                                                          |
| 66 | fBodyGyro.std.Z           | double                                                                          |
| 67 | fBodyGyro.meanFreq.X      | double                                                                          |
| 68 | fBodyGyro.meanFreq.Y      | double                                                                          |
| 69 | fBodyGyro.meanFreq.Z      | double                                                                          |
| 70 | fBodyAccMag.mean          | double                                                                          |
| 71 | fBodyAccMag.std           | double                                                                          |
| 72 | fBodyAccMag.meanFreq      | double                                                                          |
| 73 | fBodyAccJerkMag.mean      | double                                                                          |
| 74 | fBodyAccJerkMag.std       | double                                                                          |
| 75 | fBodyAccJerkMag.meanFreq  | double                                                                          |
| 76 | fBodyGyroMag.mean         | double                                                                          |
| 77 | fBodyGyroMag.std          | double                                                                          |
| 78 | fBodyGyroMag.meanFreq     | double                                                                          |
| 79 | fBodyGyroJerkMag.mean     | double                                                                          |
| 80 | fBodyGyroJerkMag.std      | double                                                                          |
| 81 | fBodyGyroJerkMag.meanFreq | double                                                                          |