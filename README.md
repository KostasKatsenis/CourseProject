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
   frames. In the process, the script erases these objects expect the two final data sets. In order not to lose any
   object of yours, this is the list with the names of the objects the script erases:
   X_test , X_train , Y_test , Y_train , trainData , testData , fcData , Features , fBodyAcc_XYZ , fBodyAccJerk_XYZ ,
   fBodyAccJerkMag , fBodyAccMag , fBodyGyro_XYZ , fBodyGyroJerkMag , fBodyGyroMag , tBodyAcc_XYZ , tBodyAccJerk_XYZ ,
   tBodyAccJerkMag , tBodyAccMag , tBodyGyro_XYZ , tBodyGyroJerk_XYZ , tBodyGyroJerkMag , tBodyGyroMag , Subject_test ,
   Subject_train , tGravityAcc_XYZ , tGravityAccMag , TotalData , NewTotalData.
   
