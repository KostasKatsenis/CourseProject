#Hello. This script runs the analysis for the given data.


#__________________________________________________________________________________
#_____________STEP 1 OF THE COURSE PROJECT_________________________________________
#__________________________________________________________________________________


#So,first of all we have to read our files.

Features<-read.table("./UCI HAR Dataset/features.txt")

#First,we read the features.txt file. We use the read.table command.
#The result Features is a data frame with 561 rows or observations and 2 columns or variables.
#The second row of the Features data frame is the names of the variables or measurements.
#From the train directory:

Y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
Subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

#We have downloaded the above files and we end-up with three data frames. Y_train has 7.352 rows and 1 column and
#contains the activities , Subject_train has the same dimensions and contains the volunteers and X_train has
#7.352 rows and 561 columns and contains the measurements.
#From the test directory:

Y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
Subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

#The above files are three data frames. They all have 2.947 rows and the Y-test has 1 column with the activity,
#the Subject_test has 1 column the volunteer and the X-test has 561 columns and contains the measurements.

#For now, we want to create two data frames: one for the train data and one for the test data. Later, we will
#unite this data frames to one.

#For the data from the train directory:

colnames(Y_train)<-"Activity_No"  #Give name to column
colnames(Subject_train)<-"Volunteer_No" #Give name to column
colnames(X_train)<-Features$V2  #Give names to columns
trainData<-data.frame(Subject_train,Y_train,X_train)  #Merge the three data frames to one

#For the data from the test directory:

colnames(Y_test)<-"Activity_No"   #Give names to column
colnames(Subject_test)<-"Volunteer_No"  #Give name to column
colnames(X_test)<-Features$V2    #Give names to columns
testData<-data.frame(Subject_test,Y_test,X_test)  #Merge the three data frames to one

#SO, now we have two data frames and we merge them to one:

TotalData<-rbind(trainData,testData)

# TotalData is our final data set for the step 1 of the course project.
#_____________________________________________________________________________________________
#_______________________END OF STEP 1 OF THE COURSE PROJECT___________________________________
#_____________________________________________________________________________________________

#_____________________________________________________________________________________________
#___________________________STEP 2 OF THE COURSE PROJECT______________________________________
#_____________________________________________________________________________________________
#In this step we have to extract only the measurements on the mean and standard deviation for
# each measurement. According to the features_info.txt the main variables are:
#tBodyAcc-XYZ
#tGravityAcc-XYZ
#tBodyAccJerk-XYZ
#tBodyGyro-XYZ
#tBodyGyroJerk-XYZ
#tBodyAccMag
#tGravityAccMag
#tBodyAccJerkMag
#tBodyGyroMag
#tBodyGyroJerkMag
#fBodyAcc-XYZ
#fBodyAccJerk-XYZ
#fBodyGyro-XYZ
#fBodyAccMag
#fBodyAccJerkMag
#fBodyGyroMag
#fBodyGyroJerkMag
#So, we extracting each variable separately by subsetting their variables from TotalData data frame.

tBodyAcc_XYZ<-TotalData[,3:8]
tGravityAcc_XYZ<-TotalData[,43:48]
tBodyAccJerk_XYZ<-TotalData[83:88]
tBodyGyro_XYZ<-TotalData[,123:128]
tBodyGyroJerk_XYZ<-TotalData[,163:168]
tBodyAccMag<-TotalData[,203:204]
tGravityAccMag<-TotalData[,216:217]
tBodyAccJerkMag<-TotalData[,229:230]
tBodyGyroMag<-TotalData[,242:243]
tBodyGyroJerkMag<-TotalData[,255:256]
fBodyAcc_XYZ<-TotalData[,268:273]
fBodyAccJerk_XYZ<-TotalData[,347:352]
fBodyGyro_XYZ<-TotalData[,426:431]
fBodyAccMag<-TotalData[,505:506]
fBodyAccJerkMag<-TotalData[,518:519]
fBodyGyroMag<-TotalData[,531:532]
fBodyGyroJerkMag<-TotalData[,544:545]

#Also, we want the Volunteer_No and Activity_No columns.So we subset those variables from the TotalData:

fcData<-TotalData[,1:2]

#And we create a new data frame which ignores the measurements without mean or standard variation

NewTotalData<-cbind(fcData,tBodyAcc_XYZ,tGravityAcc_XYZ,tBodyAccJerk_XYZ,tBodyGyro_XYZ,
 tBodyGyroJerk_XYZ,tBodyAccMag,tGravityAccMag,tBodyAccJerkMag,tBodyGyroMag,tBodyGyroJerkMag,
 fBodyAcc_XYZ,fBodyAccJerk_XYZ,fBodyGyro_XYZ,fBodyAccMag,fBodyAccJerkMag,fBodyGyroMag,fBodyGyroJerkMag)

# And this is the end of step 2 of course project.
#______________________________________________________________________________________________________
#_____________________________END OF STEP 2 OF THE COURSE PROJECT______________________________________
#______________________________________________________________________________________________________

#______________________________________________________________________________________________________
#_________________________________STEP 3 OF THE COURSE PROJECT_________________________________________
#______________________________________________________________________________________________________

#In step 3 we must use descriptive names to name the activities in the data set. So far, we have integers
#which represents the activities: 1=walking,2=walking upstairs , 3=walking downstairs , 4=sitting ,
# 5=standing , 6= laying. So, we replace the integers with characters

NewTotalData$Activity_No<-ifelse(NewTotalData$Activity_No==1,"walking",ifelse(NewTotalData$Activity_No==2,
      "walking_upstairs",ifelse(NewTotalData$Activity_No==3,"walking_downstairs",ifelse(NewTotalData$Activity_No==4,
      "sitting", ifelse(NewTotalData$Activity_No==5,"standing","laying")))))

#So, we transform the Activity_No column from an integer vector to a character vector.
#We have to change the name of the column because now we don't have numbers but we will do this
#in the next step.

#_______________________________________________________________________________________________________
#_____________________________END OF STEP 3 OF THE COURSE PROJECT_______________________________________
#_______________________________________________________________________________________________________

#Between step 3 and 4 we have to erase the objects we have created and we no longer need.

rm(X_test,X_train,Y_test,Y_train,trainData,testData,fcData,Features,fBodyAcc_XYZ,
   fBodyAccJerk_XYZ,fBodyAccJerkMag,fBodyAccMag,fBodyGyro_XYZ,fBodyGyroJerkMag,
   fBodyGyroMag,tBodyAcc_XYZ,tBodyAccJerk_XYZ,tBodyAccJerkMag,tBodyAccMag,
   tBodyGyro_XYZ,tBodyGyroJerk_XYZ,tBodyGyroJerkMag,tBodyGyroMag,Subject_test,
   Subject_train,tGravityAcc_XYZ,tGravityAccMag,TotalData)

#_______________________________________________________________________________________________________
#__________________________________STEP 4 OF THE COURSE PROJECT_________________________________________
#_______________________________________________________________________________________________________

#OK, now we have to label the data set with descriptive variable names.
#First of all we load the plyr library which will be useful in next step and
#we load the dplyr library in order to use the "rename" command.


library(plyr)
library(dplyr)

#The first label we will rename is the Activity_No to Activity

NewTotalData<-dplyr::rename(NewTotalData,Activity=Activity_No)

#There are 66 variables left.

NewTotalData<-dplyr::rename(NewTotalData,MeanOfBodyAcceleration_X_Axis=tBodyAcc.mean...X ,
   MeanOfBodyAcceleration_Y_Axis=tBodyAcc.mean...Y , MeanOfBodyAcceleration_Z_Axis=tBodyAcc.mean...Z , 
   StandardDeviationOfBodyAcceleration_X_Axis=tBodyAcc.std...X ,
   StandardDeviationOfBodyAcceleration_Y_Axis=tBodyAcc.std...Y ,
   StandardDeviationOfBodyAcceleration_Z_Axis=tBodyAcc.std...Z , 
   MeanOfGravityAcceleration_X_Axis=tGravityAcc.mean...X , MeanOfGravityAcceleration_Y_Axis=tGravityAcc.mean...Y ,
   MeanOfGravityAcceleration_Z_Axis=tGravityAcc.mean...Z , 
   StandardDeviationOfGravityAcceleration_X_Axis=tGravityAcc.std...X ,
   StandardDeviationOfGravityAcceleration_Y_Axis=tGravityAcc.std...Y ,
   StandardDeviationOfGravityAcceleration_Z_Axis=tGravityAcc.std...Z ,
   MeanOfJerkOfBodyAccelerarion_X_Axis=tBodyAccJerk.mean...X ,
   MeanOfJerkOfBodyAccelerarion_Y_Axis=tBodyAccJerk.mean...Y ,
   MeanOfJerkOfBodyAccelerarion_Z_Axis=tBodyAccJerk.mean...Z ,
   StandardDeviationOfJerkOfBodyAcceleration_X_Axis=tBodyAccJerk.std...X ,
   StandardDeviationOfJerkOfBodyAcceleration_Y_Axis=tBodyAccJerk.std...Y ,
   StandardDeviationOfJerkOfBodyAcceleration_Z_Axis=tBodyAccJerk.std...Z ,
   MeanOfAngularVelocity_X_Axis=tBodyGyro.mean...X , MeanOfAngularVelocity_Y_Axis=tBodyGyro.mean...Y ,
   MeanOfAngularVelocity_Z_Axis=tBodyGyro.mean...Z ,
   StandardDeviationOfAngularVelocity_X_Axis=tBodyGyro.std...X ,
   StandardDeviationOfAngularVelocity_Y_Axis=tBodyGyro.std...Y ,
   StandardDeviationOfAngularVelocity_Z_Axis=tBodyGyro.std...Z ,
   MeanOfAngularJerk_X_Axis=tBodyGyroJerk.mean...X , MeanOfAngularJerk_Y_Axis=tBodyGyroJerk.mean...Y ,
   MeanOfAngularJerk_Z_Axis=tBodyGyroJerk.mean...Z ,
   StandardDeviationOfAngularJerk_X_Axis=tBodyGyroJerk.std...X ,
   StandardDeviationOfAngularJerk_Y_Axis=tBodyGyroJerk.std...Y ,
   StandardDeviationOfAngularJerk_Z_Axis=tBodyGyroJerk.std...Z ,
   MeanOfMagnitudeOfBodyAcceleration=tBodyAccMag.mean.. ,
   StandardDeviationOfMagnitudeOfBodyAcceleration=tBodyAccMag.std.. ,
   MeanOfMagnitudeOfGravityAcceleration=tGravityAccMag.mean.. , 
   StandardDeviationOfMagnitudeOfGravityAcceleration=tGravityAccMag.std.. ,
   MeanOfMagnitudeOfJerkOfBodyAcceleration=tBodyAccJerkMag.mean.. ,
   StandardDeviationOfMagnitudeofJerkOfBodyAcceleration=tBodyAccJerkMag.std.. ,
   MeanOfMagnitudeOfAngularVelocity=tBodyGyroMag.mean.. ,
   StandardDeviationOfMagnitudeOfAngularVelocity = tBodyGyroMag.std.. ,
   MeanOfMagnitudeOfAngularJerk=tBodyGyroJerkMag.mean.. ,
   StandardDeviationOfAngularJerk=tBodyGyroJerkMag.std.. ,
   FFT_OfMeanOfBodyAcceleration_X_Axis=fBodyAcc.mean...X ,
   FFT_OfMeanOfBodyAcceleration_Y_Axis=fBodyAcc.mean...Y ,
   FFT_OfMeanOfBodyAcceleration_Z_Axis=fBodyAcc.mean...Z ,
   FFT_OfStandardDeviationOfBodyAcceleration_X_Axis=fBodyAcc.std...X ,
   FFT_OfStandardDeviationOfBodyAcceleration_Y_Axis=fBodyAcc.std...Y ,
   FFT_OfStandardDeviationOfBodyAcceleration_Z_Axis=fBodyAcc.std...Z ,
   FFT_OfMeanOfJerkOfBodyAcceleration_X_Axis=fBodyAccJerk.mean...X ,
   FFT_OfMeanOfJerkOfBodyAcceleration_Y_Axis=fBodyAccJerk.mean...Y ,
   FFT_OfMeanOfJerkOfBodyAcceleration_Z_Axis=fBodyAccJerk.mean...Z ,
   FFT_OfStandardDeviationOfJerkOfBodyAcceleration_X_Axis=fBodyAccJerk.std...X ,
   FFT_OfStandardDeviationOfJerkOfBodyAcceleration_Y_Axis=fBodyAccJerk.std...Y ,
   FFT_OfStandardDeviationOfJerkOfBodyAcceleration_Z_Axis=fBodyAccJerk.std...Z ,
   FFT_OfMeanOfAngularVelocity_X_Axis=fBodyGyro.mean...X ,
   FFT_OfMeanOfAngularVelocity_Y_Axis=fBodyGyro.mean...Y ,
   FFT_OfMeanOfAngularVelocity_Z_Axis=fBodyGyro.mean...Z ,
   FFT_OfStandardDeviationOfAngularVelocity_X_Axis=fBodyGyro.std...X ,
   FFT_OfStandardDeviationOfAngularVelocity_Y_Axis=fBodyGyro.std...Y ,
   FFT_OfStandardDeviationOfAngularVelocity_Z_Axis=fBodyGyro.std...Z ,
   FFT_OfMeanOfMagnitudeOfBodyAcceleration=fBodyAccMag.mean.. ,
   FFT_OfStandardDeviationOfMagnitudeOfBodyAcceleration=fBodyAccMag.std.. ,
   FFT_OfMeanOfMagnitudeOfJerkOfBodyAcceleration=fBodyBodyAccJerkMag.mean.. ,
   FFT_OfStandardDeviationOfMagnitudeOfJerkOfBodyAcceleration=fBodyBodyAccJerkMag.std.. ,
   FFT_OfMeanOfMagnitudeOfAngularVelocity=fBodyBodyGyroMag.mean.. ,
   FFT_OfStandardDeviationOfMagnitudeOfAngularVelocity=fBodyBodyGyroMag.std.. ,
   FFT_OfMeanOfMagnitudeOfAngularJerk=fBodyBodyGyroJerkMag.mean.. ,
   FFT_OfStandardDeviationOfMagnitudeOfAngularJerk=fBodyBodyGyroJerkMag.std..) 

#That was tough!!!!
#Now we have renamed all our columns with more descriptive names.

#________________________________________________________________________________________________
#_________________________END OF STEP 4 OF THE COURSE PROJECT____________________________________
#________________________________________________________________________________________________

#________________________________________________________________________________________________
#___________________________STEP 5 OF THE COURSE PROJECT_________________________________________
#________________________________________________________________________________________________

FinalData<-plyr::ddply(NewTotalData,.(Volunteer_No,Activity),summarize,
  MeanMeanOfBodyAcceleration_X_Axis=mean(MeanOfBodyAcceleration_X_Axis),
  MeanMeanOfBodyAcceleration_Y_Axis=mean(MeanOfBodyAcceleration_Y_Axis),
  MeanMeanOfBodyAcceleration_Z_Axis=mean(MeanOfBodyAcceleration_Z_Axis),
  MeanStandardDeviationOfBodyAcceleration_X_Axis=mean(StandardDeviationOfBodyAcceleration_X_Axis),            
  MeanStandardDeviationOfBodyAcceleration_Y_Axis=mean(StandardDeviationOfBodyAcceleration_Y_Axis),               
  MeanStandardDeviationOfBodyAcceleration_Z_Axis=mean(StandardDeviationOfBodyAcceleration_Z_Axis),             
  MeanMeanOfGravityAcceleration_X_Axis=mean(MeanOfGravityAcceleration_X_Axis),                   
  MeanMeanOfGravityAcceleration_Y_Axis=mean(MeanOfGravityAcceleration_Y_Axis),                      
  MeanMeanOfGravityAcceleration_Z_Axis=mean(MeanOfGravityAcceleration_Z_Axis),                      
  MeanStandardDeviationOfGravityAcceleration_X_Axis=mean(StandardDeviationOfGravityAcceleration_X_Axis),           
  MeanStandardDeviationOfGravityAcceleration_Y_Axis=mean(StandardDeviationOfGravityAcceleration_Y_Axis),          
  MeanStandardDeviationOfGravityAcceleration_Z_Axis=mean(StandardDeviationOfGravityAcceleration_Z_Axis),
  MeanMeanOfJerkOfBodyAccelerarion_X_Axis=mean(MeanOfJerkOfBodyAccelerarion_X_Axis),
  MeanMeanOfJerkOfBodyAccelerarion_Y_Axis=mean(MeanOfJerkOfBodyAccelerarion_Y_Axis),               
  MeanMeanOfJerkOfBodyAccelerarion_Z_Axis=mean(MeanOfJerkOfBodyAccelerarion_Z_Axis),                     
  MeanStandardDeviationOfJerkOfBodyAcceleration_X_Axis=mean(StandardDeviationOfJerkOfBodyAcceleration_X_Axis),         
  MeanStandardDeviationOfJerkOfBodyAcceleration_Y_Axis=mean(StandardDeviationOfJerkOfBodyAcceleration_Y_Axis),      
  MeanStandardDeviationOfJerkOfBodyAcceleration_Z_Axis=mean(StandardDeviationOfJerkOfBodyAcceleration_Z_Axis),     
  MeanMeanOfAngularVelocity_X_Axis=mean(MeanOfAngularVelocity_X_Axis),     
  MeanMeanOfAngularVelocity_Y_Axis=mean(MeanOfAngularVelocity_Y_Axis),   
  MeanMeanOfAngularVelocity_Z_Axis=mean(MeanOfAngularVelocity_Z_Axis),
  MeanStandardDeviationOfAngularVelocity_X_Axis=mean(StandardDeviationOfAngularVelocity_X_Axis),
  MeanStandardDeviationOfAngularVelocity_Y_Axis=mean(StandardDeviationOfAngularVelocity_Y_Axis),
  MeanStandardDeviationOfAngularVelocity_Z_Axis=mean(StandardDeviationOfAngularVelocity_Z_Axis),
  MeanMeanOfAngularJerk_X_Axis=mean(MeanOfAngularJerk_X_Axis),
  MeanMeanOfAngularJerk_Y_Axis=mean(MeanOfAngularJerk_Y_Axis),
  MeanMeanOfAngularJerk_Z_Axis=mean(MeanOfAngularJerk_Z_Axis),
  MeanStandardDeviationOfAngularJerk_X_Axis=mean(StandardDeviationOfAngularJerk_X_Axis),
  MeanStandardDeviationOfAngularJerk_Y_Axis=mean(StandardDeviationOfAngularJerk_Y_Axis),
  MeanStandardDeviationOfAngularJerk_Z_Axis=mean(StandardDeviationOfAngularJerk_Z_Axis),
  MeanMeanOfMagnitudeOfBodyAcceleration=mean(MeanOfMagnitudeOfBodyAcceleration),
  MeanStandardDeviationOfMagnitudeOfBodyAcceleration=mean(StandardDeviationOfMagnitudeOfBodyAcceleration),
  MeanMeanOfMagnitudeOfGravityAcceleration=mean(MeanOfMagnitudeOfGravityAcceleration),
  MeanStandardDeviationOfMagnitudeOfGravityAcceleration=mean(StandardDeviationOfMagnitudeOfGravityAcceleration),
  MeanMeanOfMagnitudeOfJerkOfBodyAcceleration=mean(MeanOfMagnitudeOfJerkOfBodyAcceleration),
  MeanStandardDeviationOfMagnitudeofJerkOfBodyAcceleration=mean(StandardDeviationOfMagnitudeofJerkOfBodyAcceleration),
  MeanMeanOfMagnitudeOfAngularVelocity=mean(MeanOfMagnitudeOfAngularVelocity),
  MeanStandardDeviationOfMagnitudeOfAngularVelocity=mean(StandardDeviationOfMagnitudeOfAngularVelocity),
  MeanMeanOfMagnitudeOfAngularJerk=mean(MeanOfMagnitudeOfAngularJerk),
  MeanStandardDeviationOfAngularJerk=mean(StandardDeviationOfAngularJerk),
  MeanFFT_OfMeanOfBodyAcceleration_X_Axis=mean(FFT_OfMeanOfBodyAcceleration_X_Axis),
  MeanFFT_OfMeanOfBodyAcceleration_Y_Axis=mean(FFT_OfMeanOfBodyAcceleration_Y_Axis),
  MeanFFT_OfMeanOfBodyAcceleration_Z_Axis=mean(FFT_OfMeanOfBodyAcceleration_Z_Axis),
  MeanFFT_OfStandardDeviationOfBodyAcceleration_X_Axis=mean(FFT_OfStandardDeviationOfBodyAcceleration_X_Axis),
  MeanFFT_OfStandardDeviationOfBodyAcceleration_Y_Axis=mean(FFT_OfStandardDeviationOfBodyAcceleration_Y_Axis),
  MeanFFT_OfStandardDeviationOfBodyAcceleration_Z_Axis=mean(FFT_OfStandardDeviationOfBodyAcceleration_Z_Axis),          
  MeanFFT_OfMeanOfJerkOfBodyAcceleration_X_Axis=mean(FFT_OfMeanOfJerkOfBodyAcceleration_X_Axis), 
  MeanFFT_OfMeanOfJerkOfBodyAcceleration_Y_Axis=mean(FFT_OfMeanOfJerkOfBodyAcceleration_Y_Axis),
  MeanFFT_OfMeanOfJerkOfBodyAcceleration_Z_Axis=mean(FFT_OfMeanOfJerkOfBodyAcceleration_Z_Axis),
  MeanFFT_OfStandardDeviationOfJerkOfBodyAcceleration_X_Axis=mean(FFT_OfStandardDeviationOfJerkOfBodyAcceleration_X_Axis),
  MeanFFT_OfStandardDeviationOfJerkOfBodyAcceleration_Y_Axis=mean(FFT_OfStandardDeviationOfJerkOfBodyAcceleration_Y_Axis),
  MeanFFT_OfStandardDeviationOfJerkOfBodyAcceleration_Z_Axis=mean(FFT_OfStandardDeviationOfJerkOfBodyAcceleration_Z_Axis),
  MeanFFT_OfMeanOfAngularVelocity_X_Axis=mean(FFT_OfMeanOfAngularVelocity_X_Axis),
  MeanFFT_OfMeanOfAngularVelocity_Y_Axis=mean(FFT_OfMeanOfAngularVelocity_Y_Axis),
  MeanFFT_OfMeanOfAngularVelocity_Z_Axis=mean(FFT_OfMeanOfAngularVelocity_Z_Axis),
  MeanFFT_OfStandardDeviationOfAngularVelocity_X_Axis=mean(FFT_OfStandardDeviationOfAngularVelocity_X_Axis),
  MeanFFT_OfStandardDeviationOfAngularVelocity_Y_Axis=mean(FFT_OfStandardDeviationOfAngularVelocity_Y_Axis),
  MeanFFT_OfStandardDeviationOfAngularVelocity_Z_Axis=mean(FFT_OfStandardDeviationOfAngularVelocity_Z_Axis),
  MeanFFT_OfMeanOfMagnitudeOfBodyAcceleration=mean(FFT_OfMeanOfMagnitudeOfBodyAcceleration),
  MeanFFT_OfStandardDeviationOfMagnitudeOfBodyAcceleration=mean(FFT_OfStandardDeviationOfMagnitudeOfBodyAcceleration),      
  MeanFFT_OfMeanOfMagnitudeOfJerkOfBodyAcceleration=mean(FFT_OfMeanOfMagnitudeOfJerkOfBodyAcceleration),
  MeanFFT_OfStandardDeviationOfMagnitudeOfJerkOfBodyAcceleration=mean(FFT_OfStandardDeviationOfMagnitudeOfJerkOfBodyAcceleration),
  MeanFFT_OfMeanOfMagnitudeOfAngularVelocity=mean(FFT_OfMeanOfMagnitudeOfAngularVelocity),
  MeanFFT_OfStandardDeviationOfMagnitudeOfAngularVelocity=mean(FFT_OfStandardDeviationOfMagnitudeOfAngularVelocity),
  MeanFFT_OfMeanOfMagnitudeOfAngularJerk=mean(FFT_OfMeanOfMagnitudeOfAngularJerk),
  MeanFFT_OfStandardDeviationOfMagnitudeOfAngularJerk=mean(FFT_OfStandardDeviationOfMagnitudeOfAngularJerk))

rm(NewTotalData)
#
# We sort the FinalData as we want
FinalData$Activity<-factor(FinalData$Activity,levels=c("walking","walking_upstairs",
    "walking_downstairs","sitting","standing","laying"))
FinalData<-FinalData[order(FinalData$Volunteer_No,FinalData$Activity),]
#
#____________________________________________________________________________________________________________________
#___________________________________END OF STEP 5 OF THE COURSE PROJECT______________________________________________
#____________________________________________________________________________________________________________________












