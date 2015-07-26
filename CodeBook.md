mportant Variables Used in the code
# "feature_names" is a Data Table that Stores features names
# "activity_lookup" is a Data Table that Stores Activity values with set column names for use in  joining activity labels with the data.
# "total_merged_data" is a Data Frame/Table that merges the data from test and training data sets including Activity Id and Subject Id
# meanAndStdDataset is a data frame/table with only mean() std() columns and it will have 10299 rows and 68 variables
# meanAndStdDatasetForMagnitude  :- Dataset is further to tidied up to choose only cumulative Magnitude variables for all three axis' rather than individual coordinates(XYZ), This gives more summarized data for the end user but still answers all the academic questions from the course project."meanAndStdDatasetForMagnitude" will have 10299 observations and 21 variables and this also joins data set with activity labels
# Below Labels were used to explain the data set
"MeanTimeBoundBodyAccMag"  - Meant time bound body acceleration Magnitude
"MeanTimeBoundGravityAccMag" - Meant time bound body acceleration Magnitude
"MeanTimeBoundBodyAccJerkMag" - Meant time bound body acceleration Magnitude
"MeanTimeBoundBodyGyroMag" - Meant time bound body acceleration Magnitude
"MeanTimeBoundBodyGyroJerkMag" - Meant time bound body acceleration Magnitude
"MeanFreeqeunceBoundBodyAccMag" - Meant time bound body acceleration Magnitude
"MeanFreeqeunceBoundBodyBodyAccJerkMag" - Meant time bound body acceleration Magnitude
"MeanFreeqeunceBoundBodyBodyGyroMag" - Meant time bound body acceleration Magnitude
"MeanFreeqeunceBoundBodyBodyGyroJerkMag"- Meant time bound body acceleration Magnitude
"StdTimeBoundBodyAccMag"    - Meant time bound body acceleration Magnitude
"StdTimeBoundGravityAccMag" - Meant time bound body acceleration Magnitude
"TimeBoundBodyAccJerkMag" - Meant time bound body acceleration Magnitude
"StdTimeBoundBodyGyroMag" - Meant time bound body acceleration Magnitude
"StdTimeBoundBodyGyroJerkMag" -- Meant time bound body acceleration Magnitude
"StdFreeqeunceBoundBodyAccMag" -- Meant time bound body acceleration Magnitude
"StdFreeqeunceBoundBodyBodyAccJerkMag"- Meant time bound body acceleration Magnitude
"StdFreeqeunceBoundBodyBodyGyroMag" - Meant time bound body acceleration Magnitude
"StdFreeqeunceBoundBodyBodyGyroJerkMag" - Meant time bound body acceleration Magnitude
"SubjectNumber" - Subject Number /person Number
"ActivityId" - Activity Id (feature Id)
"ActivityName - Activity Name (feature name)

#finalTidyDataset is a data set generated is the average of the above selected measurement  per person & per activity ,  dataset(data frame/data table) generates 180 observations (30 subjects , 6 activities ,30*6)
"SubjectNumber",
"ActivityName",
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


