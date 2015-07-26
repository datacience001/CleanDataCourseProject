##Important Variables Used in the code
# "feature_names" is a Data Table that Stores features names
# "activity_lookup" is a Data Table that Stores Activity values with set column names for use in  joining activity labels with the data.
# "total_merged_data" is a Data Frame/Table that merges the data from test and training data sets including Activity Id and Subject Id
# meanAndStdDataset is a data frame/table with only mean() std() columns and it will have 10299 rows and 68 variables
# meanAndStdDatasetForMagnitude  :- Dataset is further to tidied up to choose only cumulative Magnitude variables for all three axis' rather than individual coordinates(XYZ), This gives more summarized data for the end user but still answers all the academic questions from the course project."meanAndStdDatasetForMagnitude" will have 10299 observations and 21 variables and this also joins data set with activity labels
# Below Labels were used to explain the data set
"MeanTimeBoundBodyAccMag"  - Mean time bound body acceleration Magnitude
"MeanTimeBoundGravityAccMag" - Mean time bound gravity acceleration Magnitude
"MeanTimeBoundBodyAccJerkMag" - Mean time bound body acceleration jerk Magnitude
"MeanTimeBoundBodyGyroMag" - Mean time bound body Gyroscopic Magnitude
"MeanTimeBoundBodyGyroJerkMag" - Mean time bound body Gyroscopic jerk Magnitude
"MeanFreeqeunceBoundBodyAccMag" - Mean frequency bound body acceleration Magnitude
"MeanFreeqeunceBoundBodyBodyAccJerkMag" - Mean frequency bound body acceleration jerk Magnitude
"MeanFreeqeunceBoundBodyBodyGyroMag" - Mean frequency bound body Gyroscopic Magnitude
"MeanFreeqeunceBoundBodyBodyGyroJerkMag"- Mean frequency bound body Gyroscopic jerk Magnitude
"StdTimeBoundBodyAccMag"    - standard deviation time bound body acceleration Magnitude
"StdTimeBoundGravityAccMag" - standard deviation time bound body gravity acceleration Magnitude
"StdTimeBoundBodyAccJerkMag" - standard deviation time bound body acceleration jerk Magnitude
"StdTimeBoundBodyGyroMag" - standard deviation time bound body gyroscopic Magnitude
"StdTimeBoundBodyGyroJerkMag" -- standard deviation time bound body gyroscopic jerk Magnitude
"StdFreeqeunceBoundBodyAccMag" -- standard deviation time bound body acceleration Magnitude
"StdFreeqeunceBoundBodyBodyAccJerkMag"- standard deviation time bound body acceleration jerk Magnitude
"StdFreeqeunceBoundBodyBodyGyroMag" - standard deviation time bound body Gyro Magnitude
"StdFreeqeunceBoundBodyBodyGyroJerkMag" - standard deviation time bound body gyro jerk Magnitude
"SubjectNumber" - Subject Number /person Number
"ActivityId" - Activity Id (feature Id)
"ActivityName - Activity Name (feature name)

#finalTidyDataset is a data set generated is the average of the above selected measurement  per person & per activity ,  dataset(data frame/data table) generates 180 observations (30 subjects , 6 activities ,30*6)
"SubjectNumber", Subject Number
"ActivityName", Activity Name
"AvgMeanTimeBoundBodyAccMag",
"AvgMeanTimeBoundGravityAccMag",
"AvgMeanTimeBoundBodyAccJerkMag",
"AvgMeanTimeBoundBodyGyroMag",
"AvgMeanTimeBoundBodyGyroJerkMag",
"AvgMeanFreeqeunceBoundBodyAccMag",
"AvgMeanFreeqeunceBoundBodyBodyAccJerkMag",
"AvgMeanFreeqeunceBoundBodyBodyGyroMag",
"AvgMeanFreeqeunceBoundBodyBodyGyroJerkMag",
"AvgStdTimeBoundBodyAccMag"  ,
"AvgStdTimeBoundGravityAccMag",
"AvgTimeBoundBodyAccJerkMag",
"AvgStdTimeBoundBodyGyroMag",
"AvgStdTimeBoundBodyGyroJerkMag",
"AvgStdFreeqeunceBoundBodyAccMag",
"AvgStdFreeqeunceBoundBodyBodyAccJerkMag",
"AvgStdFreeqeunceBoundBodyBodyGyroMag",
"AvgStdFreeqeunceBoundBodyBodyGyroJerkMag",
"ActivityId"




