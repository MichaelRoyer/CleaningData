
Source Data Overview
========================================================

The following is a summary of the human activity recognition experiments that were carried out using smartphones by
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto from 
Smartlab (Non Linear Complex Systems Laboratory) at
Università degli Studi di Genova, Italy.


The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% for generating the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force was assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this analysis came from the accelerometer and gyroscope 3-axial raw signals.  These time domain signals were captured at a constant rate of 50 Hz. Then, they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal were then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  The body linear acceleration and angular velocity were derived in time to obtain Jerk signals. The magnitude of these three dimensional signals (X, Y, and Z directions) were calculated using the Euclidean norm.  Finally, a Fast Fourier Transform (FFT) was applied to some of these signals producing indicative frequency domain signals.

Data provided (for each record):
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
- Triaxial Angular velocity from the gyroscope 
- A 561-feature vector with time and frequency domain variables 
- Activity labels for the activity code used 
- An identifier for the subject who carried out the experiment

Datasets provided (that were used):

- 'features.txt': Feature names (561 features)
- 'activity_labels.txt': Activity code to activity name association (6 records)
- 'test/X_test.txt': Feature results records (7352 records)
- 'test/y_test.txt': Activity code associated to feature results (7352 records)
- 'test/subject_test.txt': Subject associated to feature results (7352 records)
- 'train/X_train.txt': Feature results records (2947 records)
- 'train/y_train.txt': Activity code associated to feature results (2947 records)
- 'train/subject_train.txt': Subject associated to feature results (2947 records)

For more information on the source data, please read the README.txt and features-info.txt files provided with the downloadable source data.  The source data can be downloaded from  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

Work Performed To Summarize Data
=========================================

Results for 561 time and frequency domain related feature variables were provide in the source data and this analysis focused on only extracting the mean and standard deviation related results and summarizing (averaging) by subject and activity name.

The following are the steps that were taken to repackage the results.  
1. All the above mentioned source data was loaded in an RStudio session.  
2. The source data for the subject records, activity code records, and feature results records were seperated into two different sets of files.  This was combined into one set of data for each type of file (x_test was combined with x_train; y_test  was combined y_train; subject_test  was combined subject_train).  This resulted in three dataframes with 10,299 records in each.  
3. The combined activity data frame contained an activity code rather than an activity name and this was replaced with the activity name found in the loaded activity_labels data (1 was replaced with "WALKING", 2 was replaced with "WALKING_UPSTAIRS", etc.).  
4. Column names were assigned to each of the resulting combined data frames.  The feature names for the combined feature results data frame were obtained from the loaded features data.  "Subject_ID" was assigned to the combined subject data frame and "Activity" was assigned to the combined activity code data frame.  
5. The combined subject, activity code, and feature results data frames were then merged into one data frame.  
6. "Subject_ID", "Activity", and all feature names with mean or standard deviation in the name were extracted from the merged data frame.  
7. The feature names were abbreviated in nature and the associated column names in the extracted data frame were replaced with more meaningful column names.    
8. The extracted data frame was then aggregated along "Subject_ID" and "Activity" and averaged.  This reduced the 10,299 records down to 180 records, one for each "Subject_ID"" and "Activity" combination.  Each mean and standard deviation related feature name that is reported on is an average for the particular "Subject_ID" and "Activity" combination (79 different columns in total).    

Running the run_analyis.R script produces a "tidyData" dataframe as described above.  How to run it are described in the README.MD and, once downloaded, the script can be reviewed for a deeper understanding on how the data has been cleaned up and repackaged.

Resulting Summarized Data
=========================================
The "tidyData" data frame contains the following data:

#|Column Name|Data Type|Short Description
---|----------|----------|-----------------
1|Subject_ID|Integer|An id given to a subject of the study.  
2|Activity|Factor|An activity studied in the evaluation.  Values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.  
3|Time_Body_Accelerometer_Mean_Freq_X|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration signal in the x direction.  
4|Time_Body_Accelerometer_Mean_Freq_Y|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration signal in the y direction.  
5|Time_Body_Accelerometer_Mean_Freq_Z|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration signal in the z direction.  
6|Time_Body_Accelerometer_Mean_X|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration signal in the x direction.  
7|Time_Body_Accelerometer_Mean_Y|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration signal in the y direction.  
8|Time_Body_Accelerometer_Mean_Z|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration signal in the z direction.  
9|Time_Body_Accelerometer_SD_X|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration signal in the x direction.  
10|Time_Body_Accelerometer_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration signal in the y direction.  
11|Time_Body_Accelerometer_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration signal in the z direction.  
12|Time_Body_Accelerometer_Jerk_Signal_Mean_Freq_X|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration jerk signal in the x direction.  
13|Time_Body_Accelerometer_Jerk_Signal_Mean_Freq_Y|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration jerk signal in the y direction.  
14|Time_Body_Accelerometer_Jerk_Signal_Mean_Freq_Z|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration jerk signal in the z direction.  
15|Time_Body_Accelerometer_Jerk_Signal_Mean_X|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration jerk signal in the x direction.  
16|Time_Body_Accelerometer_Jerk_Signal_Mean_Y|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration jerk signal in the y direction.    
17|Time_Body_Accelerometer_Jerk_Signal_Mean_Z|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration jerk signal in the z direction.  
18|Time_Body_Accelerometer_Jerk_Signal_SD_X|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration jerk signal in the x direction.  
19|Time_Body_Accelerometer_Jerk_Signal_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration jerk signal in the y direction.  
20|Time_Body_Accelerometer_Jerk_Signal_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration jerk signal in the z direction.  
21|Time_Body_Accelerometer_Mag_Mean|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration magnitude signal.   
22|Time_Body_Accelerometer_Mag_Mean_Freq|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration magnitude signal.  
23|Time_Body_Accelerometer_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration magnitude signal.  
24|Time_Body_Accelerometer_Jerk_Signal_Mag_Mean|Numeric|An average of a subject's activity measured mean for an accelerometer captured time domain body acceration magnitude jerk signal.   
25|Time_Body_Accelerometer_Jerk_Signal_Mag_Mean_Freq|Numeric|An average of a subject's activity measured mean frequency for an accelerometer captured time domain body acceration magnitude jerk signal.   
26|Time_Body_Accelerometer_Jerk_Signal_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured time domain body acceration magnitude jerk signal.   
27|Freq_Body_Accelerometer_Jerk_Signal_Mean_X|Numeric|An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration jerk signal in the x direction.  
28|Freq_Body_Accelerometer_Jerk_Signal_Mean_Y|Numeric|An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration jerk signal in the y direction.  
29|Freq_Body_Accelerometer_Jerk_Signal_Mean_Z|Numeric|An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration jerk signal in the z direction.  
30|Freq_Body_Accelerometer_Jerk_Signal_SD_X|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration jerk signal in the x direction.  
31|Freq_Body_Accelerometer_Jerk_Signal_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration jerk signal in the y direction.  
32|Freq_Body_Accelerometer_Jerk_Signal_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration jerk signal in the z direction.  
33|Freq_Body_Accelerometer_Jerk_Signal_Mag_Mean|Numeric|An average of a subject's activity measured mean for an accelerometer captured frequency domain body acceration magnitude jerk signal.  
34|Freq_Body_Accelerometer_Jerk_Signal_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an accelerometer captured frequency domain body acceration magnitude jerk signal.   
35|Time_Body_Gyroscope_Mean_Freq_X|Numeric|An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration signal in the x direction.  
36|Time_Body_Gyroscope_Mean_Freq_Y|Numeric|An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration signal in the y direction.  
37|Time_Body_Gyroscope_Mean_Freq_Z|Numeric|An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration signal in the z direction.  
38|Time_Body_Gyroscope_Mean_X|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain body acceration signal in the x direction.  
39|Time_Body_Gyroscope_Mean_Y|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain body acceration signal in the y direction.  
40|Time_Body_Gyroscope_Mean_Z|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain body acceration signal in the z direction.  
41|Time_Body_Gyroscope_SD_X|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration signal in the x direction.  
42|Time_Body_Gyroscope_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration signal in the y direction.  
43|Time_Body_Gyroscope_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration signal in the z direction.  
44|Time_Body_Gyroscope_Mag_Mean|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain body acceration magnitude signal.   
45|Time_Body_Gyroscope_Mag_Mean_Freq|Numeric|An average of a subject's activity measured mean frequency for an gyroscope captured time domain body acceration magnitude signal.   
46|Time_Body_Gyroscope_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration magnitude signal.   
47|Time_Body_Gyroscope_Jerk_Signal_Mag_Mean|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain body acceration magnitude jerk signal.   
48|Time_Body_Gyroscope_Jerk_Signal_Mag_Mean_Freq|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain body acceration magnitude jerk signal.   
49|Time_Body_Gyroscope_Jerk_Signal_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain body acceration magnitude jerk signal.   
50|Time_Gravity_Accelerometer_Mean_X|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration signal in the x direction.  
51|Time_Gravity_Accelerometer_Mean_Y|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration signal in the y direction.  
52|Time_Gravity_Accelerometer_Mean_Z|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration signal in the z direction.  
53|Time_Gravity_Accelerometer_SD_X|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration signal in the x direction.  
54|Time_Gravity_Accelerometer_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration signal in the y direction.  
55|Time_Gravity_Accelerometer_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration signal in the z direction.  
56|Time_Gravity_Accelerometer_Mag_Mean|Numeric|An average of a subject's activity measured mean for an gyroscope captured time domain gravity acceleration magnitude signal.  
57|Time_Gravity_Accelerometer_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured time domain gravity acceleration magnitude signal.   
58|Freq_Body_Accelerometer_Mean_X|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the x direction.  
59|Freq_Body_Accelerometer_Mean_Y|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the y direction.  
60|Freq_Body_Accelerometer_Mean_Z|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the z direction.  
61|Freq_Body_Accelerometer_SD_X|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the x direction.  
62|Freq_Body_Accelerometer_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the y direction.  
63|Freq_Body_Accelerometer_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the z direction.  
64|Freq_Body_Gyroscope_Jerk_Signal_Mean_X|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the x direction.  
65|Freq_Body_Gyroscope_Jerk_Signal_Mean_Y|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the y direction.  
66|Freq_Body_Gyroscope_Jerk_Signal_Mean_Z|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the z direction.  
67|Freq_Body_Gyroscope_Jerk_Signal_SD_X|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the x direction.  
68|Freq_Body_Gyroscope_Jerk_Signal_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the y direction.  
69|Freq_Body_Gyroscope_Jerk_Signal_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the z direction.  
70|Freq_Body_Gyroscope_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal.   
71|Freq_Body_Gyroscope_Mean_X|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the x direction.  
72|Freq_Body_Gyroscope_Mean_Y|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the y direction.  
73|Freq_Body_Gyroscope_Mean_Z|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration signal in the z direction.  
74|Freq_Body_Gyroscope_SD_X|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the x direction.  
75|Freq_Body_Gyroscope_SD_Y|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the y direction.  
76|Freq_Body_Gyroscope_SD_Z|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration signal in the z direction.  
77|Freq_Body_Accelerometer_Mag_Mean|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration magnitude signal.   
78|Freq_Body_Accelerometer_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration magnitude signal.  
79|Freq_Body_Gyroscope_Jerk_Signal_Mag_Mean|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration magnitude signal.  
80|Freq_Body_Gyroscope_Jerk_Signal_Mag_SD|Numeric|An average of a subject's activity measured standard deviation for an gyroscope captured frequency domain body acceration magnitude signal.    
81|Freq_Body_Gyroscope_Mag_Mean|Numeric|An average of a subject's activity measured mean for an gyroscope captured frequency domain body acceration magnitude signal.  

