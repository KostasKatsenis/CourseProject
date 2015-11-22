#Codebook 
####by Kostantinos Katsenis 22/11/2015

##Project description

###Collection of the raw data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to
label
the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was
selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which
has
gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and
gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff
frequency was used. From each window, a vector of features was obtained by calculating variables from the time and
frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and
tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to
remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using
the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ,
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

##Creating the tidy data file

###Guide to create the tidy data file

Download the data file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
There is a directory "UCI HAR Dataset" which contains all the necessary files and directories. You should put this
directory inside your working directory in R-studio and then run the
run_analysis.R script. This will create a data frame named "FinalData", which the tidy data we want 
to produce.
You can read the README.md file for additional information.
The FinalData set contains the means of each different measurement for each Volunteer and each Activity.

##Description of the variables

#####Volunteer_No:

In the experiments we use 30 different persons, 30 volunteers. Each volunteer is represented with a
number from 1 to 30.

#####Activity:

#####MeanMeanOfBodyAcceleration_X_Axis:

#####MeanMeanOfBodyAcceleration_Y_Axis:

#####MeanMeanOfBodyAcceleration_Z_Axis:

#####MeanStandardDeviationOfBodyAcceleration_X_Axis:

#####MeanStandardDeviationOfBodyAcceleration_Y_Axis:

#####MeanStandardDeviationOfBodyAcceleration_Z_Axis:

#####MeanMeanOfGravityAcceleration_X_Axis:

#####MeanMeanOfGravityAcceleration_Y_Axis:

#####MeanMeanOfGravityAcceleration_Z_Axis:

#####MeanStandardDeviationOfGravityAcceleration_X_Axis:

#####MeanStandardDeviationOfGravityAcceleration_Y_Axis:  

#####MeanStandardDeviationOfGravityAcceleration_Z_Axis:

#####MeanMeanOfJerkOfBodyAccelerarion_X_Axis:  

#####MeanMeanOfJerkOfBodyAccelerarion_Y_Axis:

#####MeanMeanOfJerkOfBodyAccelerarion_Z_Axis:

#####MeanStandardDeviationOfJerkOfBodyAcceleration_X_Axis:   

#####MeanStandardDeviationOfJerkOfBodyAcceleration_Y_Axis:          

#####MeanStandardDeviationOfJerkOfBodyAcceleration_Z_Axis:          

#####MeanMeanOfAngularVelocity_X_Axis:          

#####MeanMeanOfAngularVelocity_Y_Axis:                              

#####MeanMeanOfAngularVelocity_Z_Axis:                              

#####MeanStandardDeviationOfAngularVelocity_X_Axis:                 

#####MeanStandardDeviationOfAngularVelocity_Y_Axis:                 

#####MeanStandardDeviationOfAngularVelocity_Z_Axis:                 

#####MeanMeanOfAngularJerk_X_Axis:                 

#####MeanMeanOfAngularJerk_Y_Axis:                                  

#####MeanMeanOfAngularJerk_Z_Axis:                                  

#####MeanStandardDeviationOfAngularJerk_X_Axis:                     

#####MeanStandardDeviationOfAngularJerk_Y_Axis:                     

#####MeanStandardDeviationOfAngularJerk_Z_Axis:                     

#####MeanMeanOfMagnitudeOfBodyAcceleration:                     

#####MeanStandardDeviationOfMagnitudeOfBodyAcceleration:            

#####MeanMeanOfMagnitudeOfGravityAcceleration:            

#####MeanStandardDeviationOfMagnitudeOfGravityAcceleration:       

#####MeanMeanOfMagnitudeOfJerkOfBodyAcceleration:         

#####MeanStandardDeviationOfMagnitudeofJerkOfBodyAcceleration:      

#####MeanMeanOfMagnitudeOfAngularVelocity:      

#####MeanStandardDeviationOfMagnitudeOfAngularVelocity:             

#####MeanMeanOfMagnitudeOfAngularJerk:             

#####MeanStandardDeviationOfAngularJerk:                            

#####MeanFFT_OfMeanOfBodyAcceleration_X_Axis:                       

#####MeanFFT_OfMeanOfBodyAcceleration_Y_Axis:                       

#####MeanFFT_OfMeanOfBodyAcceleration_Z_Axis:                       

#####MeanFFT_OfStandardDeviationOfBodyAcceleration_X_Axis:          

#####MeanFFT_OfStandardDeviationOfBodyAcceleration_Y_Axis:          

#####MeanFFT_OfStandardDeviationOfBodyAcceleration_Z_Axis:          

#####MeanFFT_OfMeanOfJerkOfBodyAcceleration_X_Axis:          

#####MeanFFT_OfMeanOfJerkOfBodyAcceleration_Y_Axis:                 

#####MeanFFT_OfMeanOfJerkOfBodyAcceleration_Z_Axis:                 

#####MeanFFT_OfStandardDeviationOfJerkOfBodyAcceleration_X_Axis:    

#####MeanFFT_OfStandardDeviationOfJerkOfBodyAcceleration_Y_Axis:    

#####MeanFFT_OfStandardDeviationOfJerkOfBodyAcceleration_Z_Axis:    

#####MeanFFT_OfMeanOfAngularVelocity_X_Axis:    

#####MeanFFT_OfMeanOfAngularVelocity_Y_Axis:                        

#####MeanFFT_OfMeanOfAngularVelocity_Z_Axis:                        

#####MeanFFT_OfStandardDeviationOfAngularVelocity_X_Axis:           

#####MeanFFT_OfStandardDeviationOfAngularVelocity_Y_Axis:           

#####MeanFFT_OfStandardDeviationOfAngularVelocity_Z_Axis:           

#####MeanFFT_OfMeanOfMagnitudeOfBodyAcceleration:                   

#####MeanFFT_OfStandardDeviationOfMagnitudeOfBodyAcceleration:      

#####MeanFFT_OfMeanOfMagnitudeOfJerkOfBodyAcceleration:      

#####MeanFFT_OfStandardDeviationOfMagnitudeOfJerkOfBodyAcceleration:

#####MeanFFT_OfMeanOfMagnitudeOfAngularVelocity:                    

#####MeanFFT_OfStandardDeviationOfMagnitudeOfAngularVelocity:       

#####MeanFFT_OfMeanOfMagnitudeOfAngularJerk:       

#####MeanFFT_OfStandardDeviationOfMagnitudeOfAngularJerk:


