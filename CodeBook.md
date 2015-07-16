ITEMS TO NOTE:
--------------
Please take note of the following in the result.txt file:

1) Activity names have been made more friendlier
- e.g. WALKING_UPSTAIRS is converted to "Walking upstairs".
- Specifically all characters are made lowecase, underscore is replaced with a space and 1st character is made into upper case

2) Variables names are also made friendlier:
- e.g. "fBodyGyro-mean()-Z" is converted to "Mean of mean of frequency domain body gyroscopic signal along Z axis"
- "tBodyAccJerkMag-std()" is converted to "Mean of standard deviation of time domain body linear acceleration magnitude"
- etc.  Complete list of variables can be seen below.  Their original names are provided below for ready reference.
- Please note that each variable name is preceeded by "Mean of" since the final result is to contain average of varibles values grouped by activity and subject.

3) Results have been grouped by activity and then by subject as asked for in the problem statement.  Accordingly the 1st column is activity and second column is subject.  There should be only one row per activity/subject combination as would be expected.

4) Resultant data is in "wide"" format, i.e. there is one column for each mean/standard deviation variable in the raw data.


COLUMNS in RESULT
-----------------
Following is the names of the columns in the result data.  The table below provides the raw_name (as used in the original features.txt) and the friendly name output in the result file.

       raw_name                                                    friendly name
1  N/A                           "activity"                             
2  N/A                           "subject"                             
3  "tBodyAcc-mean()-X"           "Mean of mean of time domain body acceleration along X axis"                             
4  "tBodyAcc-mean()-Y"           "Mean of mean of time domain body acceleration along Y axis"                             
5  "tBodyAcc-mean()-Z"           "Mean of mean of time domain body acceleration along Z axis"                             
6  "tBodyAcc-std()-X"            "Mean of standard deviation of time domain body acceleration along X axis"               
7  "tBodyAcc-std()-Y"            "Mean of standard deviation of time domain body acceleration along Y axis"               
8  "tBodyAcc-std()-Z"            "Mean of standard deviation of time domain body acceleration along Z axis"               
9  "tGravityAcc-mean()-X"        "Mean of mean of time domain gravity acceleration along X axis"                          
10 "tGravityAcc-mean()-Y"        "Mean of mean of time domain gravity acceleration along Y axis"                          
11 "tGravityAcc-mean()-Z"        "Mean of mean of time domain gravity acceleration along Z axis"                          
12 "tGravityAcc-std()-X"         "Mean of standard deviation of time domain gravity acceleration along X axis"            
13 "tGravityAcc-std()-Y"         "Mean of standard deviation of time domain gravity acceleration along Y axis"            
14 "tGravityAcc-std()-Z"         "Mean of standard deviation of time domain gravity acceleration along Z axis"            
15 "tBodyAccJerk-mean()-X"       "Mean of mean of time domain body linear acceleration along X axis"                      
16 "tBodyAccJerk-mean()-Y"       "Mean of mean of time domain body linear acceleration along Y axis"                      
17 "tBodyAccJerk-mean()-Z"       "Mean of mean of time domain body linear acceleration along Z axis"                      
18 "tBodyAccJerk-std()-X"        "Mean of standard deviation of time domain body linear acceleration along X axis"        
19 "tBodyAccJerk-std()-Y"        "Mean of standard deviation of time domain body linear acceleration along Y axis"        
20 "tBodyAccJerk-std()-Z"        "Mean of standard deviation of time domain body linear acceleration along Z axis"        
21 "tBodyGyro-mean()-X"          "Mean of mean of time domain body gyroscopic signal along X axis"                        
22 "tBodyGyro-mean()-Y"          "Mean of mean of time domain body gyroscopic signal along Y axis"                        
23 "tBodyGyro-mean()-Z"          "Mean of mean of time domain body gyroscopic signal along Z axis"                        
24 "tBodyGyro-std()-X"           "Mean of standard deviation of time domain body gyroscopic signal along X axis"          
25 "tBodyGyro-std()-Y"           "Mean of standard deviation of time domain body gyroscopic signal along Y axis"          
26 "tBodyGyro-std()-Z"           "Mean of standard deviation of time domain body gyroscopic signal along Z axis"          
27 "tBodyGyroJerk-mean()-X"      "Mean of mean of time domain body angular velocity along X axis"                         
28 "tBodyGyroJerk-mean()-Y"      "Mean of mean of time domain body angular velocity along Y axis"                         
29 "tBodyGyroJerk-mean()-Z"      "Mean of mean of time domain body angular velocity along Z axis"                         
30 "tBodyGyroJerk-std()-X"       "Mean of standard deviation of time domain body angular velocity along X axis"           
31 "tBodyGyroJerk-std()-Y"       "Mean of standard deviation of time domain body angular velocity along Y axis"           
32 "tBodyGyroJerk-std()-Z"       "Mean of standard deviation of time domain body angular velocity along Z axis"           
33 "tBodyAccMag-mean()"          "Mean of mean of time domain body acceleration magnitude"                                
34 "tBodyAccMag-std()"           "Mean of standard deviation of time domain body acceleration magnitude"                  
35 "tGravityAccMag-mean()"       "Mean of mean of time domain gravity acceleration magnitude"                             
36 "tGravityAccMag-std()"        "Mean of standard deviation of time domain gravity acceleration magnitude"               
37 "tBodyAccJerkMag-mean()"      "Mean of mean of time domain body linear acceleration magnitude"                         
38 "tBodyAccJerkMag-std()"       "Mean of standard deviation of time domain body linear acceleration magnitude"           
39 "tBodyGyroMag-mean()"         "Mean of mean of time domain body gyroscopic signal magnitude"                           
40 "tBodyGyroMag-std()"          "Mean of standard deviation of time domain body gyroscopic signal magnitude"             
41 "tBodyGyroJerkMag-mean()"     "Mean of mean of time domain body angular velocity magnitude"                            
42 "tBodyGyroJerkMag-std()"      "Mean of standard deviation of time domain body angular velocity magnitude"              
43 "fBodyAcc-mean()-X"           "Mean of mean of frequency domain body acceleration along X axis"                        
44 "fBodyAcc-mean()-Y"           "Mean of mean of frequency domain body acceleration along Y axis"                        
45 "fBodyAcc-mean()-Z"           "Mean of mean of frequency domain body acceleration along Z axis"                        
46 "fBodyAcc-std()-X"            "Mean of standard deviation of frequency domain body acceleration along X axis"          
47 "fBodyAcc-std()-Y"            "Mean of standard deviation of frequency domain body acceleration along Y axis"          
48 "fBodyAcc-std()-Z"            "Mean of standard deviation of frequency domain body acceleration along Z axis"          
49 "fBodyAccJerk-mean()-X"       "Mean of mean of frequency domain body linear acceleration along X axis"                 
50 "fBodyAccJerk-mean()-Y"       "Mean of mean of frequency domain body linear acceleration along Y axis"                 
51 "fBodyAccJerk-mean()-Z"       "Mean of mean of frequency domain body linear acceleration along Z axis"                 
52 "fBodyAccJerk-std()-X"        "Mean of standard deviation of frequency domain body linear acceleration along X axis"   
53 "fBodyAccJerk-std()-Y"        "Mean of standard deviation of frequency domain body linear acceleration along Y axis"   
54 "fBodyAccJerk-std()-Z"        "Mean of standard deviation of frequency domain body linear acceleration along Z axis"   
55 "fBodyGyro-mean()-X"          "Mean of mean of frequency domain body gyroscopic signal along X axis"                   
56 "fBodyGyro-mean()-Y"          "Mean of mean of frequency domain body gyroscopic signal along Y axis"                   
57 "fBodyGyro-mean()-Z"          "Mean of mean of frequency domain body gyroscopic signal along Z axis"                   
58 "fBodyGyro-std()-X"           "Mean of standard deviation of frequency domain body gyroscopic signal along X axis"     
59 "fBodyGyro-std()-Y"           "Mean of standard deviation of frequency domain body gyroscopic signal along Y axis"     
60 "fBodyGyro-std()-Z"           "Mean of standard deviation of frequency domain body gyroscopic signal along Z axis"     
61 "fBodyAccMag-mean()"          "Mean of mean of frequency domain body acceleration magnitude"                           
62 "fBodyAccMag-std()"           "Mean of standard deviation of frequency domain body acceleration magnitude"             
63 "fBodyBodyAccJerkMag-mean()"  "Mean of mean of frequency domain whole body linear acceleration magnitude"              
64 "fBodyBodyAccJerkMag-std()"   "Mean of standard deviation of frequency domain whole body linear acceleration magnitude"
65 "fBodyBodyGyroMag-mean()"     "Mean of mean of frequency domain whole body gyroscopic signal magnitude"                
66 "fBodyBodyGyroMag-std()"      "Mean of standard deviation of frequency domain whole body gyroscopic signal magnitude"  
67 "fBodyBodyGyroJerkMag-mean()" "Mean of mean of frequency domain whole body angular velocity magnitude"                 
68 "fBodyBodyGyroJerkMag-std()"  "Mean of standard deviation of frequency domain whole body angular velocity magnitude"   
