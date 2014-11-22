Coursera Assignment - Tidy Data
===================

### Assignment:
1. You should create one R script called `run_analysis.R` that does the following. 
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names. 
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Data set:
[UCI HAR Dataset](https://github.com/eterna2/datasciencecoursera/tree/master/UCI%20HAR%20Dataset)

### run_analysis.R
The script comprises of 4 functions:

#### 1.  getFeatures(string)
This function takes in the location of the data set, and returns the sanitized labels of the accelerometers measurements.

##### Steps taken
1. Read in the features labels
2. Replace the features names with valid column labels
3. Remove extra '.' inside the feature labels
4. Return the list of labels

#### 2.  combineFiles(string,string)
This function takes in 2 string inputs: 

1. location of data set, and
2. location of the actual data (either "test" for test data, or "train" for training data),

and returns a data.frame with the following columns

1. Subject
2. Activity Type
3. Mean and Standard deviation for each measurement

##### Steps taken
1. call `getFeatures` to get feature labels
2. read in the x values and labels the column respectively with the labels obtained in previous step
3. extract columns with the keyword `mean` or `std`
4. read in the y values
5. read in the subjects
6. bind all the columns together
7. return the data.frame

#### 3. relabelActivity(string,data.frame)
This function takes in the location of the data set, and the corresponding data.frame of the data set. It relabels the `Activity` with the corresponding descriptive labels (e.g. WALKING), and returns the new data.frame.  

##### Steps taken
1. reoder data.frame by Subject
2. read in labels for Activity
3. relabel the Activity columns with the label read in previously
4. return the data.frame

#### 4. start(string)
This is the entry point for the script. This function takes in the location of the data set, and returns the aggregated tidy data.frame (see step 6 of Assignment). 

##### Steps taken
1. call `combineFiles` for test data
2. call `combineFiles` for training data
3. append training data to test data
4. mean aggregate the data.frame by Subject and Activity
5. return the new data.frame

### Executing run_analysis.R
The script is self-initiating. Just execute the `run_analysis.R` and `tidydata.txt` will be written out.