# Human-Activity-Recognition-Experiment-Data-Cleaning
Jhon J. Sanabria ‘README” for the data tidying assignment
This is the documentation for the files, data and data transformations for the tidying of the Human Activity Recognition Experiment reported as: 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The data is provided in a zip folder available at the following address:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Withing the folder there are a descriptive ‘README’ file, a ‘feature_info’ file that describes the labels of the variables included in the datafiles, two files with the labels for activities and for the variables, as described below:

- 'features_info.txt': Shows information about the variables used on the feature vector.
Includes 561 labels

- 'features.txt': List of all features.
Includes 6 labels

- 'activity_labels.txt': Links the class labels with their activity name.

The data included in two folders: ‘train’ and ‘test’ withing those folders there are the list of subjects for each set and the data in the following form:

- 'train/X_train.txt': Training set.
Includes 7352 observations of 561 variables

- 'train/y_train.txt': Training labels.
Includes 7352 observations of 1 variable

- 'test/X_test.txt': Test set.
Includes 2947 observations of 561 variables

- 'test/y_test.txt': Test labels.
Includes 2947 observations of 1 variable.

Maesurments include:

Time domain measurements:
"tBody-Acceleration-mean()-X"
"tBody-Acceleration-mean()-Y"
"tBody-Acceleration-mean()-Z"
"tBody-Acceleration-std()-X"
"tBody-Acceleration-std()-Y"
"tBody-Acceleration-std()-Z"
"tGravity-Acceleration-mean()-X"
"tGravity-Acceleration-mean()-Y"
"tGravity-Acceleration-mean()-Z"
"tGravity-Acceleration-std()-X"
"tGravity-Acceleration-std()-Y"
"tGravity-Acceleration-std()-Z"
"tBody-AccelerationJerk-mean()-X"
"tBody-AccelerationJerk-mean()-Y"
"tBody-AccelerationJerk-mean()-Z"
"tBody-AccelerationJerk-std()-X"
"tBody-AccelerationJerk-std()-Y"
"tBody-AccelerationJerk-std()-Z"
"tBodyGyro-mean()-X"
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBody-Acceleration-Magnitude-mean()"
"tBody-Acceleration-Magnitude-std()"
"tGravity-Acceleration-Magnitude-mean()"
"tGravity-Acceleration-Magnitude-std()"
"tBody-AccelerationJerk-Magnitude-mean()"
"tBody-AccelerationJerk-Magnitude-std()"
"tBodyGyro-Magnitude-mean()"
"tBodyGyro-Magnitude-std()"
"tBodyGyroJerk-Magnitude-mean()"
"tBodyGyroJerk-Magnitude-std()"

Frequency domain measurements:
"fBody-Acceleration-mean()-X"
"fBody-Acceleration-mean()-Y"
"fBody-Acceleration-mean()-Z"
"fBody-Acceleration-std()-X"
"fBody-Acceleration-std()-Y"
"fBody-Acceleration-std()-Z"
"fBody-AccelerationJerk-mean()-X"
"fBody-AccelerationJerk-mean()-Y"
"fBody-AccelerationJerk-mean()-Z"
"fBody-AccelerationJerk-std()-X"
"fBody-AccelerationJerk-std()-Y"
"fBody-AccelerationJerk-std()-Z"
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"
"fBody-Acceleration-Magnitude-mean()"
"fBody-Acceleration-Magnitude-std()"
"fBodyBody-AccelerationJerk-Magnitude-mean()"
"fBodyBody-AccelerationJerk-Magnitude-std()"
"fBodyBodyGyro-Magnitude-mean()"
"fBodyBodyGyro-Magnitude-std()"
"fBodyBodyGyroJerk-Magnitude-mean()"
"fBodyBodyGyroJerk-Magnitude-std()"


The manipulation of the data includes:

Creating a data frame with 561 variables, using the ‘features_info’ as variable names.

Adding the labels of activities and the subjects as columns. 
Binding train and test data in the same data frame.

Select only the variables that contain mean and standard deviation data, ignoring individual measurements.

Variables were renamed to include a description of the activities and a descriptive name for the measures means and standard deviations.

Create subset data frame with only the means per activity and for subject.

Create a shorter file with the summary of the means per activity per subject.

Write both files as .txt files
