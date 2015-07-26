# Please read the  Readme file attached to the github before running this code.


# Get the working directory, assume all files are in the current working directory
fileDir <- getwd();

library(dplyr)
# Read the data before cleaning or massaging it.

# Stores features names in  Column_names Data Table

feature_names <- read.table("features.txt",stringsAsFactors=FALSE)

# Stores features names in  Activity Table, set column names for later use in joining activity labels with the data.

activity_lookup <- read.table("activity_labels.txt",stringsAsFactors = FALSE)
activity_lookup <- setNames(activity_lookup,c("ActivityId","ActivityName"))

# below Three variables load test Subjects, test activities, test data
test_subjects <- read.table("subject_test.txt",stringsAsFactors = FALSE)
test_activities <- read.table("y_test.txt",stringsAsFactors = FALSE)

#load the Test data and assign column names with feature names
test_data <- read.table("X_test.txt",col.names=as.character(feature_names$V2),check.names = FALSE)

# Column bind test data with Subject (person) Number and Activity Number
test_data <- cbind(test_data,SubjectNumber = test_subjects$V1)
test_data <- cbind(test_data,ActivityId = test_activities$V1)

# below Three variables load training Subjects, test activities, test data

train_subjects <- read.table("subject_train.txt",stringsAsFactors = FALSE)
train_activities <- read.table("y_train.txt",stringsAsFactors = FALSE)

#load the Training data and assign column names with feature names
train_data <- read.table("X_train.txt",col.names=as.character(feature_names$V2),check.names = FALSE)

# Column bind training data with Subject (person) Number and Activity Number
train_data <- cbind(train_data,SubjectNumber = train_subjects$V1)
train_data <- cbind(train_data,ActivityId = train_activities$V1)

# Q1 - Merges the training and the test sets to create one data set.
# Merge the traninging data and test data prepared above.

total_merged_data <- rbind(test_data,train_data)

# Further refine the data by removing duplicate columns
total_merged_data  <-total_merged_data[ , !duplicated(colnames(total_merged_data))]

# Q2 from the Porject - Extracts only the measurements on the mean and standard deviation for each measurement.
# Below data set will have 10299 rows and 68 variables

meanAndStdDataset <- select(total_merged_data,contains("mean()"),contains("std()"),contains("SubjectNumber"),contains("ActivityId"))

# I have decided further to tidy up the data and choose only cumulative Magnitude variables for all three axis' rather than
# individual coordinates(XYZ), please see the code-book for further details.I flet this gives more summarized data for the end user
# but still answers all the academic questions from the course project.
# below data set will have 10299 rows and 21 variables

meanAndStdDatasetForMagnitude <- select(meanAndStdDataset,contains("Mag"),contains("SubjectNumber"),contains("ActivityId"))

# Q3 Uses descriptive activity names to name the activities in the data set  
# We can use inner join to do this for the acitivty_lookup data table created at the start of the program
# below command will add Activity Name for reach row corresponding to activity Id

meanAndStdDatasetForMagnitude  <- inner_join(meanAndStdDatasetForMagnitude,activity_lookup,by="ActivityId")

# Q4 Appropriately labels the data set with descriptive variable names. Assign names.

names(meanAndStdDatasetForMagnitude) <- c("MeanTimeBoundBodyAccMag","MeanTimeBoundGravityAccMag","MeanTimeBoundBodyAccJerkMag","MeanTimeBoundBodyGyroMag","MeanTimeBoundBodyGyroJerkMag","MeanFreeqeunceBoundBodyAccMag"        ,"MeanFreeqeunceBoundBodyBodyAccJerkMag","MeanFreeqeunceBoundBodyBodyGyroMag","MeanFreeqeunceBoundBodyBodyGyroJerkMag","StdTimeBoundBodyAccMag"  ,"StdTimeBoundGravityAccMag","TimeBoundBodyAccJerkMag","StdTimeBoundBodyGyroMag","StdTimeBoundBodyGyroJerkMag","StdFreeqeunceBoundBodyAccMag","StdFreeqeunceBoundBodyBodyAccJerkMag","StdFreeqeunceBoundBodyBodyGyroMag","StdFreeqeunceBoundBodyBodyGyroJerkMag","SubjectNumber","ActivityId","ActivityName")
# Q5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Below dataset(data frame/data table) generates 180 observations (30 subjects , 6 activities ,30*6)

finalTidyDataset <- meanAndStdDatasetForMagnitude %>% group_by(SubjectNumber,ActivityName) %>% summarise_each(funs(mean))

names(finalTidyDataset)<- c("SubjectNumber","ActivityName","AvgMeanTimeBoundBodyAccMag","AvgMeanTimeBoundGravityAccMag","AvgMeanTimeBoundBodyAccJerkMag","AvgMeanTimeBoundBodyGyroMag","AvgMeanTimeBoundBodyGyroJerkMag","AvgMeanFreeqeunceBoundBodyAccMag"        ,"AvgMeanFreeqeunceBoundBodyBodyAccJerkMag","AvgMeanFreeqeunceBoundBodyBodyGyroMag","AvgMeanFreeqeunceBoundBodyBodyGyroJerkMag","AvgStdTimeBoundBodyAccMag"  ,"AvgStdTimeBoundGravityAccMag","AvgTimeBoundBodyAccJerkMag","AvgStdTimeBoundBodyGyroMag","AvgStdTimeBoundBodyGyroJerkMag","AvgStdFreeqeunceBoundBodyAccMag","AvgStdFreeqeunceBoundBodyBodyAccJerkMag","AvgStdFreeqeunceBoundBodyBodyGyroMag","AvgStdFreeqeunceBoundBodyBodyGyroJerkMag","ActivityId")

write.table(finalTidyDataset,"ActivityMonitoringExperiment.txt")



