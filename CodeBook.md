Overview
==================================================================
This codebook describes the course project that demonstrates collecting, working with, and cleaning a data set with the goal in mind to prepare tidy data that can be used for review and further analysis.  In this document, you will find a brief description of the source data experiments conducted, a description of the kind of data collected and selected from that source data, work performed to summarize the source data of interest, and the resulting summarized tidy data. 


Source Data
==================================================================
### Human Activity Recognition Using Smartphones Dataset  
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% for generating the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See the Source Feature Selection section below for more specifics on data selected.


### Data provided (for each record):
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial angular velocity from the gyroscope 
- 561 feature vector with time and frequency domain variables 
- Descriptive labels (activity name) for the activity codes used 
- An identifier for the subject who carried out the experiment

### Datasets provided (that were used in the course assignment):

- 'features.txt': Feature names (561 features)
- 'activity_labels.txt': Activity code to activity name association (6 records)  

- 'test/X_test.txt': Feature results records (7352 records for 561 features)
- 'test/y_test.txt': Activity code associated to feature results (7352 records)
- 'test/subject_test.txt': Subject associated to feature results (7352 records).   Each row identifies the subject who performed the activity for each window sample.  

- 'train/X_train.txt': Feature results records (2947 records for 562 features)
- 'train/y_train.txt': Activity code associated to feature results (2947 records)
- 'train/subject_train.txt': Subject associated to feature results (2947 records).  Each row identifies the subject who performed the activity for each window sample. 

    The subject range is from 1 to 30 across the subject_train.txt and subject_test.txt datasets.

### Datasets provided (that were NOT used in the course assignment):

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.  
* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

    Test versions of the above data exist as well and descriptions are equivalent. 

### Additional Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Source Data Feature Selection 
=============================

The features selected for this database came from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also, the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern where '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

mean(): Mean value  
std(): Standard deviation  
mad(): Median absolute deviation   
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.   
iqr(): Interquartile range   
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal   
kurtosis(): kurtosis of the frequency domain signal   
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

The complete list of variables for each feature vector is available in 'features.txt' dataset.

Work Performed To Summarize Source Data
=======================================

Results for 561 time and frequency domain feature variables were provide in the source data and this analysis focused on only extracting the mean and standard deviation related results and summarizing (averaging) by subject and activity name.

The following are the steps that were taken to summarize the results.  
1. All the above mentioned source data sets were loaded in an RStudio session.  
2. The source data for the subject records, activity code records, and feature results records were seperated into two different sets of files.  This was combined into one set of data for each type of file (x_test was combined with x_train; y_test was combined y_train; subject_test  was combined subject_train).  This resulted in three dataframes with 10,299 records in each one.  
3. The combined activity code data frame contained an activity code rather than an activity name and this was replaced with the activity name found in the loaded activity_labels data (1 was replaced with "WALKING", 2 was replaced with "WALKING_UPSTAIRS", etc.).  
4. Column names were assigned to each of the resulting combined data frames.  The feature names for the combined feature results data frame were obtained from the loaded features data.  Subject_ID was assigned to the combined subject data frame and Activity was assigned to the combined activity code data frame.  
5. The combined subject, activity code, and feature results data frames were then merged into one data frame.  
6. Data of interest was then selected from the merged data frame.  Subject_ID, Activity, and all feature names with mean or standard deviation in the name were extracted.  
7. The resulting feature names were abbreviated in nature and the associated column names in the extracted data frame were then replaced with more meaningful column names by expanding to the full intention of the abbreviation.  Examples are: "t" was replaced with "Time", "f" was replaced with "Freq", "Acc" was replaced with "Accelerometer", "Gyro" was replaced with "Gyroscope", etc.     
8. The extracted data frame was then aggregated along Subject_ID and Activity and averaged.  This reduced the 10,299 records down to 180 records, one for each Subject_ID  and Activity combination.  Each mean and standard deviation related feature name that was reported on is an average for the particular Subject_ID and Activity combination (79 summarized columns in total).    

The aboved summarized data can be created by running the run_analyis.R script which produces the course assignment's "tidyData" data frame as described above.  The system requirements and the steps required to run the script are documented in the README.MD (from this repo).  If desired, the script can be reviewed for a deeper understanding as to how the data was cleaned up and summarized.

Resulting Summarized Data
=========================================
The "tidyData" data frame contains the following data:


1. Subject_ID == An id given to a subject of the study.   
2. Activity == An activity studied in the evaluation.  Values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.   
3. Time_Body_Accelerometer_Mean_Freq_X == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration signal in the x direction   
4. Time_Body_Accelerometer_Mean_Freq_Y == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration signal in the y direction   
5. Time_Body_Accelerometer_Mean_Freq_Z == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration signal in the z direction   
6. Time_Body_Accelerometer_Mean_X == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration signal in the x direction   
7. Time_Body_Accelerometer_Mean_Y == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration signal in the y direction   
8. Time_Body_Accelerometer_Mean_Z == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration signal in the z direction   
9. Time_Body_Accelerometer_SD_X == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration signal in the x direction   
10. Time_Body_Accelerometer_SD_Y == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration signal in the y direction   
11. Time_Body_Accelerometer_SD_Z == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration signal in the z direction   
12. Time_Body_Accelerometer_Jerk_Signal_Mean_Freq_X == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration jerk signal in the x direction   
13. Time_Body_Accelerometer_Jerk_Signal_Mean_Freq_Y == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration jerk signal in the y direction   
14. Time_Body_Accelerometer_Jerk_Signal_Mean_Freq_Z == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration jerk signal in the z direction   
15. Time_Body_Accelerometer_Jerk_Signal_Mean_X == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration jerk signal in the x direction   
16. Time_Body_Accelerometer_Jerk_Signal_Mean_Y == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration jerk signal in the y direction   
17. Time_Body_Accelerometer_Jerk_Signal_Mean_Z == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration jerk signal in the z direction   
18. Time_Body_Accelerometer_Jerk_Signal_SD_X == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration jerk signal in the x direction   
19. Time_Body_Accelerometer_Jerk_Signal_SD_Y == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration jerk signal in the y direction   
20. Time_Body_Accelerometer_Jerk_Signal_SD_Z == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration jerk signal in the z direction   
21. Time_Body_Accelerometer_Mag_Mean == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration magnitude signal    
22. Time_Body_Accelerometer_Mag_Mean_Freq == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration magnitude signal    
23. Time_Body_Accelerometer_Mag_SD == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration magnitude signal    
24. Time_Body_Accelerometer_Jerk_Signal_Mag_Mean == An average of a subject's activity measured mean for an accelerometer captured time domain body acceration magnitude jerk signal    
25. Time_Body_Accelerometer_Jerk_Signal_Mag_Mean_Freq == An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration magnitude jerk signal    
26. Time_Body_Accelerometer_Jerk_Signal_Mag_SD == An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration magnitude jerk signal    
27. Freq_Body_Accelerometer_Jerk_Signal_Mean_X == An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration jerk signal in the x direction   
28. Freq_Body_Accelerometer_Jerk_Signal_Mean_Y == An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration jerk signal in the y direction   
29. Freq_Body_Accelerometer_Jerk_Signal_Mean_Z == An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration jerk signal in the z direction   
30. Freq_Body_Accelerometer_Jerk_Signal_SD_X == An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration jerk signal in the x direction   
31. Freq_Body_Accelerometer_Jerk_Signal_SD_Y == An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration jerk signal in the y direction   
32. Freq_Body_Accelerometer_Jerk_Signal_SD_Z == An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration jerk signal in the z direction   
33. Freq_Body_Accelerometer_Jerk_Signal_Mag_Mean == An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration magnitude jerk signal    
34. Freq_Body_Accelerometer_Jerk_Signal_Mag_SD == An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration magnitude jerk signal    
35. Time_Body_Gyroscope_Mean_Freq_X == An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration signal in the x direction   
36. Time_Body_Gyroscope_Mean_Freq_Y == An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration signal in the y direction   
37. Time_Body_Gyroscope_Mean_Freq_Z == An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration signal in the z direction   
38. Time_Body_Gyroscope_Mean_X == An average of a subject's activity measured mean for an gyroscope captured time domain body acceration signal in the x direction   
39. Time_Body_Gyroscope_Mean_Y == An average of a subject's activity measured mean for an gyroscope captured time domain body acceration signal in the y direction   
40. Time_Body_Gyroscope_Mean_Z == An average of a subject's activity measured mean for an gyroscope captured time domain body acceration signal in the z direction   
41. Time_Body_Gyroscope_SD_X == An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration signal in the x direction   
42. Time_Body_Gyroscope_SD_Y == An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration signal in the y direction   
43. Time_Body_Gyroscope_SD_Z == An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration signal in the z direction   
44. Time_Body_Gyroscope_Mag_Mean == An average of a subject's activity measured mean for an gyroscope captured time domain body acceration magnitude signal    
45. Time_Body_Gyroscope_Mag_Mean_Freq == An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration magnitude signal    
46. Time_Body_Gyroscope_Mag_SD == An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration magnitude signal    
47. Time_Body_Gyroscope_Jerk_Signal_Mag_Mean == An average of a subject's activity measured mean for an gyroscope captured time domain body acceration magnitude jerk signal    
48. Time_Body_Gyroscope_Jerk_Signal_Mag_Mean_Freq == An average of a subject's activity measured mean for an gyroscope captured time domain body acceration magnitude jerk signal    
49. Time_Body_Gyroscope_Jerk_Signal_Mag_SD == An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration magnitude jerk signal    
50. Time_Gravity_Accelerometer_Mean_X == An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration signal in the x direction   
51. Time_Gravity_Accelerometer_Mean_Y == An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration signal in the y direction   
52. Time_Gravity_Accelerometer_Mean_Z == An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration signal in the z direction   
53. Time_Gravity_Accelerometer_SD_X == An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration signal in the x direction   
54. Time_Gravity_Accelerometer_SD_Y == An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration signal in the y direction   
55. Time_Gravity_Accelerometer_SD_Z == An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration signal in the z direction   
56. Time_Gravity_Accelerometer_Mag_Mean == An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration magnitude signal    
57. Time_Gravity_Accelerometer_Mag_SD == An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration magnitude signal    
58. Freq_Body_Accelerometer_Mean_X == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the x direction   
59. Freq_Body_Accelerometer_Mean_Y == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the y direction   
60. Freq_Body_Accelerometer_Mean_Z == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the z direction   
61. Freq_Body_Accelerometer_SD_X == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the x direction   
62. Freq_Body_Accelerometer_SD_Y == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the y direction   
63. Freq_Body_Accelerometer_SD_Z == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the z direction   
64. Freq_Body_Gyroscope_Jerk_Signal_Mean_X == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the x direction   
65. Freq_Body_Gyroscope_Jerk_Signal_Mean_Y == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the y direction   
66. Freq_Body_Gyroscope_Jerk_Signal_Mean_Z == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the z direction   
67. Freq_Body_Gyroscope_Jerk_Signal_SD_X == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the x direction   
68. Freq_Body_Gyroscope_Jerk_Signal_SD_Y == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the y direction   
69. Freq_Body_Gyroscope_Jerk_Signal_SD_Z == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the z direction   
70. Freq_Body_Gyroscope_Mag_SD == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal    
71. Freq_Body_Gyroscope_Mean_X == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the x direction   
72. Freq_Body_Gyroscope_Mean_Y == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the y direction   
73. Freq_Body_Gyroscope_Mean_Z == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the z direction   
74. Freq_Body_Gyroscope_SD_X == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the x direction   
75. Freq_Body_Gyroscope_SD_Y == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the y direction   
76. Freq_Body_Gyroscope_SD_Z == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the z direction   
77. Freq_Body_Accelerometer_Mag_Mean == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration magnitude signal    
78. Freq_Body_Accelerometer_Mag_SD == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration magnitude signal    
79. Freq_Body_Gyroscope_Jerk_Signal_Mag_Mean == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration magnitude signal    
80. Freq_Body_Gyroscope_Jerk_Signal_Mag_SD == An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration magnitude signal    
81. Freq_Body_Gyroscope_Mag_Mean == An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration magnitude signal    


Subject_ID is an integer, Activity is a factor, and all other variables are numeric.

Please, review the results of the tidyData data frame at your leisure.  Thank you!
