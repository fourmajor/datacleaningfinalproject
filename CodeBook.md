Based on the orignal untidy data supplied, the following variables are present in the dataframe written to the file varAvgsBasedOnSubjectAndActivity.txt:
 
 [1] "subject": An identifier of the subject who carried out the activity.                 
 [2] "activity": A description of the activity that the subject was doing. It is one of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
 
The rest of the variables are as follows:
 [3] "tBodyAcc.mean...X"              
 [4] "tBodyAcc.mean...Y"              
 [5] "tBodyAcc.mean...Z"              
 [6] "tBodyAcc.std...X"               
 [7] "tBodyAcc.std...Y"               
 [8] "tBodyAcc.std...Z"               
 [9] "tGravityAcc.mean...X"           
[10] "tGravityAcc.mean...Y"           
[11] "tGravityAcc.mean...Z"           
[12] "tGravityAcc.std...X"            
[13] "tGravityAcc.std...Y"            
[14] "tGravityAcc.std...Z"            
[15] "tBodyAccJerk.mean...X"          
[16] "tBodyAccJerk.mean...Y"          
[17] "tBodyAccJerk.mean...Z"          
[18] "tBodyAccJerk.std...X"           
[19] "tBodyAccJerk.std...Y"           
[20] "tBodyAccJerk.std...Z"           
[21] "tBodyGyro.mean...X"             
[22] "tBodyGyro.mean...Y"             
[23] "tBodyGyro.mean...Z"             
[24] "tBodyGyro.std...X"              
[25] "tBodyGyro.std...Y"              
[26] "tBodyGyro.std...Z"              
[27] "tBodyGyroJerk.mean...X"         
[28] "tBodyGyroJerk.mean...Y"         
[29] "tBodyGyroJerk.mean...Z"         
[30] "tBodyGyroJerk.std...X"          
[31] "tBodyGyroJerk.std...Y"          
[32] "tBodyGyroJerk.std...Z"          
[33] "tBodyAccMag.mean.."             
[34] "tBodyAccMag.std.."              
[35] "tGravityAccMag.mean.."          
[36] "tGravityAccMag.std.."           
[37] "tBodyAccJerkMag.mean.."         
[38] "tBodyAccJerkMag.std.."          
[39] "tBodyGyroMag.mean.."            
[40] "tBodyGyroMag.std.."             
[41] "tBodyGyroJerkMag.mean.."        
[42] "tBodyGyroJerkMag.std.."         
[43] "fBodyAcc.mean...X"              
[44] "fBodyAcc.mean...Y"              
[45] "fBodyAcc.mean...Z"              
[46] "fBodyAcc.std...X"               
[47] "fBodyAcc.std...Y"               
[48] "fBodyAcc.std...Z"               
[49] "fBodyAcc.meanFreq...X"          
[50] "fBodyAcc.meanFreq...Y"          
[51] "fBodyAcc.meanFreq...Z"          
[52] "fBodyAccJerk.mean...X"          
[53] "fBodyAccJerk.mean...Y"          
[54] "fBodyAccJerk.mean...Z"          
[55] "fBodyAccJerk.std...X"           
[56] "fBodyAccJerk.std...Y"           
[57] "fBodyAccJerk.std...Z"           
[58] "fBodyAccJerk.meanFreq...X"      
[59] "fBodyAccJerk.meanFreq...Y"      
[60] "fBodyAccJerk.meanFreq...Z"      
[61] "fBodyGyro.mean...X"             
[62] "fBodyGyro.mean...Y"             
[63] "fBodyGyro.mean...Z"             
[64] "fBodyGyro.std...X"              
[65] "fBodyGyro.std...Y"              
[66] "fBodyGyro.std...Z"              
[67] "fBodyGyro.meanFreq...X"         
[68] "fBodyGyro.meanFreq...Y"         
[69] "fBodyGyro.meanFreq...Z"         
[70] "fBodyAccMag.mean.."             
[71] "fBodyAccMag.std.."              
[72] "fBodyAccMag.meanFreq.."         
[73] "fBodyBodyAccJerkMag.mean.."     
[74] "fBodyBodyAccJerkMag.std.."      
[75] "fBodyBodyAccJerkMag.meanFreq.." 
[76] "fBodyBodyGyroMag.mean.."        
[77] "fBodyBodyGyroMag.std.."         
[78] "fBodyBodyGyroMag.meanFreq.."    
[79] "fBodyBodyGyroJerkMag.mean.."    
[80] "fBodyBodyGyroJerkMag.std.."     
[81] "fBodyBodyGyroJerkMag.meanFreq.."

From the original features_info.txt, these are defined as:
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

In the case of the processing we have done with run_analysis.R, our result is the mean of each of these mean() and std() variables based on all combinations of subject and activity. For instance, for subject 15 there are multiple measurements of the WALKING activity. Our resultant data frame will have the mean of all the means of all the measurements for subject 15 WALKING, as well as all other subject/activity combinations.