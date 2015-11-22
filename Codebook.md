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
The script creates a text file CourseProject.txt, which contains the FinalData.

##Description of the variables

#####Volunteer_No:

In the experiments we use 30 different persons, 30 volunteers. Each volunteer is represented with a
number from 1 to 30.

#####Activity:

There are six activities: Walking , Walking upstairs , Walking downstairs , Sitting , Standing , Laying.

#####MeanMeanOfBodyAcceleration_X_Axis:

The mean of all means of measurements of body acceleration on X axis.Units=g

#####MeanMeanOfBodyAcceleration_Y_Axis:

The mean of all means of measurements of body acceleration on Y axis.Units=g

#####MeanMeanOfBodyAcceleration_Z_Axis:

The mean of all means of measurements of body acceleration on Z axis.Units=g

#####MeanStandardDeviationOfBodyAcceleration_X_Axis:

The mean of all standard deviations of measurements of body acceleration on X axis.Units=g

#####MeanStandardDeviationOfBodyAcceleration_Y_Axis:

The mean of all standard deviations of measurements of body acceleration on Y axis.Units=g

#####MeanStandardDeviationOfBodyAcceleration_Z_Axis:

The mean of all standard deviations of measurements of body acceleration on Z axis.Units=g

#####MeanMeanOfGravityAcceleration_X_Axis:

The mean of all means of measurements of gravity acceleration on X axis.Units=g

#####MeanMeanOfGravityAcceleration_Y_Axis:

The mean of all means of measurements of gravity acceleration on Y axis.Units=g

#####MeanMeanOfGravityAcceleration_Z_Axis:

The mean of all means of measurements of gravity acceleration on Z axis.Units=g

#####MeanStandardDeviationOfGravityAcceleration_X_Axis:

The mean of all standard deviations of measurements of gravity acceleration on X axis.Units=g

#####MeanStandardDeviationOfGravityAcceleration_Y_Axis: 

The mean of all standard deviations of measurements of gravity acceleration on Y axis.Units=g

#####MeanStandardDeviationOfGravityAcceleration_Z_Axis:

The mean of all standard deviations of measurements of gravity acceleration on Z axis.Units=g

#####MeanMeanOfJerkOfBodyAccelerarion_X_Axis: 

The mean of all means of measurements of Jerk of body acceleration on X axis.Units= g/sec

#####MeanMeanOfJerkOfBodyAccelerarion_Y_Axis:

The mean of all means of measurements of Jerk of body acceleration on Y axis.Units= g/sec

#####MeanMeanOfJerkOfBodyAccelerarion_Z_Axis:

The mean of all means of measurements of Jerk of body acceleration on Z axis.Units= g/sec

#####MeanStandardDeviationOfJerkOfBodyAcceleration_X_Axis:

The mean of all standard deviations of measurements of Jerk of body acceleration on X axis.Units= g/sec

#####MeanStandardDeviationOfJerkOfBodyAcceleration_Y_Axis:   

The mean of all standard deviations of measurements of Jerk of body acceleration on Y axis.Units= g/sec

#####MeanStandardDeviationOfJerkOfBodyAcceleration_Z_Axis:          

The mean of all standard deviations of measurements of Jerk of body acceleration on Z axis.Units= g/sec

#####MeanMeanOfAngularVelocity_X_Axis:  

The mean of all means of measurements of Angular velocity on X axis. Units= radians / sec

#####MeanMeanOfAngularVelocity_Y_Axis:  

The mean of all means of measurements of Angular velocity on Y axis. Units= radians / sec

#####MeanMeanOfAngularVelocity_Z_Axis:                              

The mean of all means of measurements of Angular velocity on Z axis. Units= radians / sec

#####MeanStandardDeviationOfAngularVelocity_X_Axis: 

The mean of all standard deviations of measurements of Angular velocity on X axis. Units= radians / sec

#####MeanStandardDeviationOfAngularVelocity_Y_Axis: 
 
The mean of all standard deviations of measurements of Angular velocity on Y axis. Units= radians / sec

#####MeanStandardDeviationOfAngularVelocity_Z_Axis:  

The mean of all standard deviations of measurements of Angular velocity on Z axis. Units= radians / sec

#####MeanMeanOfAngularJerk_X_Axis:  

The mean of means of all measurements of angular Jerk on X axis. Units= radians / sec^3

#####MeanMeanOfAngularJerk_Y_Axis:                                  

The mean of means of all measurements of angular Jerk on Y axis. Units= radians / sec^3

#####MeanMeanOfAngularJerk_Z_Axis:                                  

The mean of means of all measurements of angular Jerk on Z axis. Units= radians / sec^3

#####MeanStandardDeviationOfAngularJerk_X_Axis: 

The mean of standard deviations of all measurements of angular Jerk on X axis. Units= radians / sec^3

#####MeanStandardDeviationOfAngularJerk_Y_Axis:                     

The mean of standard deviations of all measurements of angular Jerk on Y axis. Units= radians / sec^3

#####MeanStandardDeviationOfAngularJerk_Z_Axis:                     

The mean of standard deviations of all measurements of angular Jerk on Z axis. Units= radians / sec^3

#####MeanMeanOfMagnitudeOfBodyAcceleration:      

The mean of means of all measurements of magnitude of body acceleration.

#####MeanStandardDeviationOfMagnitudeOfBodyAcceleration:  

The mean of standard deviation of all measurements of magnitude of body acceleration.

#####MeanMeanOfMagnitudeOfGravityAcceleration:  

The mean of means of all measurements of magnitude of gravity acceleration.

#####MeanStandardDeviationOfMagnitudeOfGravityAcceleration:   

The mean of standard deviations of all measurements of magnitude of gravity acceleration.

#####MeanMeanOfMagnitudeOfJerkOfBodyAcceleration:   

The mean of means of all measurements of magnitude of Jerk of body acceleration.

#####MeanStandardDeviationOfMagnitudeofJerkOfBodyAcceleration:   

The mean of standard deviations of all measurements of magnitude of jerk of body acceleration.

#####MeanMeanOfMagnitudeOfAngularVelocity:     

The mean of means of all measurements of magnitude of angular velocity.

#####MeanStandardDeviationOfMagnitudeOfAngularVelocity:    

The mean of standard deviations of all measurements of magnitude of angular velocity.

#####MeanMeanOfMagnitudeOfAngularJerk:  

The mean of means of all measurements of magnitude of angular jerk.

#####MeanStandardDeviationOfAngularJerk:  

The mean of standard deviations of all measurements of magnitude of angular jerk.

#####MeanFFT_MeanOfBodyAcceleration_X_Axis:  

The mean of means of all measurements of Fast Fourier Transformation of body acceleration on X axis.

#####MeanFFT_MeanOfBodyAcceleration_Y_Axis:  

The mean of means of all measurements of Fast Fourier Transformation of body acceleration on Y axis.

#####MeanFFT_MeanOfBodyAcceleration_Z_Axis:   

The mean of means of all measurements of Fast Fourier Transformation of body acceleration on Z axis.

#####MeanFFT_StandardDeviationOfBodyAcceleration_X_Axis:

The mean of standard deviations of all measurements of Fast Fourier Transformation of body acceleration on X axis.

#####MeanFFT_StandardDeviationOfBodyAcceleration_Y_Axis:  

The mean of standard deviations of all measurements of Fast Fourier Transformation of body acceleration on Y axis.

#####MeanFFT_StandardDeviationOfBodyAcceleration_Z_Axis:

The mean of standard deviations of all measurements of Fast Fourier Transformation of body acceleration on Z axis.

#####MeanFFT_MeanOfJerkOfBodyAcceleration_X_Axis:

The mean of means of all measurements of Fast Fourier Transformation of jerk of body acceleration on X axis.

#####MeanFFT_MeanOfJerkOfBodyAcceleration_Y_Axis:  

The mean of means of all measurements of Fast Fourier Transformation of jerk of body acceleration on Y axis.

#####MeanFFT_MeanOfJerkOfBodyAcceleration_Z_Axis: 

The mean of means of all measurements of Fast Fourier Transformation of jerk of body acceleration on Z axis.

#####MeanFFT_StandardDeviationOfJerkOfBodyAcceleration_X_Axis:  

The mean of standard deviations of all measurements of Fast Fourier Transformation of jerk of body acceleration on X axis.

#####MeanFFT_StandardDeviationOfJerkOfBodyAcceleration_Y_Axis:

The mean of standard deviations of all measurements of Fast Fourier Transformation of jerk of body acceleration on Y axis.

#####MeanFFT_StandardDeviationOfJerkOfBodyAcceleration_Z_Axis:   

The mean of standard deviations of all measurements of Fast Fourier Transformation of jerk of body acceleration on Z axis.

#####MeanFFT_MeanOfAngularVelocity_X_Axis: 

The mean of means of Fast Fourier Transformation of Angular velocity on X axis.

#####MeanFFT_MeanOfAngularVelocity_Y_Axis: 

The mean of means of Fast Fourier Transformation of Angular velocity on Y axis.

#####MeanFFT_MeanOfAngularVelocity_Z_Axis:   

The mean of means of Fast Fourier Transformation of Angular velocity on Z axis.

#####MeanFFT_StandardDeviationOfAngularVelocity_X_Axis:

The mean of standard deviations of Fast Fourier Transformation of Angular velocity on X axis.

#####MeanFFT_StandardDeviationOfAngularVelocity_Y_Axis: 

The mean of standard deviations of Fast Fourier Transformation of Angular velocity on Y axis.

#####MeanFFT_StandardDeviationOfAngularVelocity_Z_Axis:  

The mean of standard deviations of Fast Fourier Transformation of Angular velocity on Z axis.

#####MeanFFT_MeanOfMagnitudeOfBodyAcceleration: 

The mean of means of Fast Fourier Transformation of magnitude of body acceleration.

#####MeanFFT_StandardDeviationOfMagnitudeOfBodyAcceleration: 

The mean of standard deviations of Fast Fourier Transformation of magnitude of body acceleration.

#####MeanFFT_MeanOfMagnitudeOfJerkOfBodyAcceleration: 

The mean of means of Fast Fourier Transformation of magnitude of jerk of body acceleration.

#####MeanFFT_StandardDeviationOfMagnitudeOfJerkOfBodyAcceleration:

The mean of standard deviations of Fast Fourier Transformation of magnitude of jerk of body acceleration.

#####MeanFFT_MeanOfMagnitudeOfAngularVelocity:

The mean of means of Fast Fourier Transformation of magnitude of Angular velocity.

#####MeanFFT_StandardDeviationOfMagnitudeOfAngularVelocity: 

The mean of standard deviations of Fast Fourier Transformation of magnitude of Angular velocity.

#####MeanFFT_MeanOfMagnitudeOfAngularJerk:

The mean of means of Fast Fourier Transformation of magnitude of Angular jerk.

#####MeanFFT_StandardDeviationOfMagnitudeOfAngularJerk: 

The mean of standard deviations of Fast Fourier Transformation of magnitude of angular jerk.

