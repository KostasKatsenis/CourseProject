# CourseProject
Course Project of Coursera's Getting and Cleaning Data Course

## Instructions for the script.

  The run_analysis.R script contains commands that process the data.
First of all, the data should be in their original form.There should be 
inside your working directory a directory with the name "UCI HAR Dataset".
Inside that directory should be the directories "train" and "test" and the files 
"activity_labels.txt","features.txt","features_info.txt" and "README.txt".
Inside the "test" directory should be "subject_test.txt","X_test.txt" and "y_test.txt"
and inside the "train" directory should be the files "subject_train.txt","X_train.txt" 
and "y_train.txt" Also, these directories should each contain a directory with the name "Inertial Signals"
 but we are not going to use that data.
 
   Before you run the script,you should know that the script loads the appropriate libraries. So, the packages plyr 
   and dplyr should be installed on your system. Also, the script creates a lot of new objects especially data 
   frames. In the process, the script erases these objects except the final data set. In order not to lose any
   object of yours, this is the list with the names of the objects the script erases:
   X_test , X_train , Y_test , Y_train , trainData , testData , fcData , Features , fBodyAcc_XYZ , fBodyAccJerk_XYZ ,
   fBodyAccJerkMag , fBodyAccMag , fBodyGyro_XYZ , fBodyGyroJerkMag , fBodyGyroMag , tBodyAcc_XYZ , tBodyAccJerk_XYZ ,
   tBodyAccJerkMag , tBodyAccMag , tBodyGyro_XYZ , tBodyGyroJerk_XYZ , tBodyGyroJerkMag , tBodyGyroMag , Subject_test ,
   Subject_train , tGravityAcc_XYZ , tGravityAccMag , TotalData , NewTotalData.
   
### What the run_analysis.R script does?

#####The script is divided in five steps:

In step 1 , we read the files using the read.table command.Then, we give names to the variables
and then we merge the files to two data sets. One for train data set and one for test data set.
Then we merge these data sets together with the rbind() command and we have a new data set.

In step 2 we subset the columns that refer to mean or standard deviation and we cbind() them in order 
to build a new data set.

In step 3 we transform our column Activity from integer vector to character vector. We use a big ifelse command
to do this tranformation.

In step 4 we renaming our columns. The dplyr package is loaded because we use the rename command.

Finally,in step 5 we create a new data set which contains the mean of each variable for each person and each activity.
For making the final data set more tidy, we transform the Activity column to a factor from a character vector and then
sorting by person and by activity our Final data set.

In the end , the script creates a text file wlich contains the data of FinalData data frame.
