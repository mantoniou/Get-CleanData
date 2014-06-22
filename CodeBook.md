Final Dataset Description 
====================================================================

Activity
		
		Indicates the Activity of each observation. It includes the following Values:
		LAYING
		SITTING
		STANDING
		WALKING
		WALKING_DOWNSTAIRS
		WALKING_UPSTAIRS

Subject	
		
		Indicates the subject number (1 to 30) 				
				


The next 86 variables are averages of each of the following variables,
which present different measures for Samsung Galaxy S:
				
tBodyAcc-mean()-X	

tBodyAcc-mean()-Y	

tBodyAcc-mean()-Z	

tBodyAcc-std()-X	

tBodyAcc-std()-Y	

tBodyAcc-std()-Z	

tGravityAcc-mean()-X	

tGravityAcc-mean()-Y	

tGravityAcc-mean()-Z	

tGravityAcc-std()-X	

tGravityAcc-std()-Y	

tGravityAcc-std()-Z	

tBodyAccJerk-mean()-X	

tBodyAccJerk-mean()-Y	

tBodyAccJerk-mean()-Z	

tBodyAccJerk-std()-X	

tBodyAccJerk-std()-Y	

tBodyAccJerk-std()-Z	

tBodyGyro-mean()-X	

tBodyGyro-mean()-Y	

tBodyGyro-mean()-Z	

tBodyGyro-std()-X	

tBodyGyro-std()-Y	

tBodyGyro-std()-Z	

tBodyGyroJerk-mean()-X	

tBodyGyroJerk-mean()-Y	

tBodyGyroJerk-mean()-Z	

tBodyGyroJerk-std()-X	

tBodyGyroJerk-std()-Y	

tBodyGyroJerk-std()-Z	

tBodyAccMag-mean()	

tBodyAccMag-std()	

tGravityAccMag-mean()	

tGravityAccMag-std()	

tBodyAccJerkMag-mean()	

tBodyAccJerkMag-std()	

tBodyGyroMag-mean()	

tBodyGyroMag-std()	

tBodyGyroJerkMag-mean()	

tBodyGyroJerkMag-std()	

fBodyAcc-mean()-X	

fBodyAcc-mean()-Y	

fBodyAcc-mean()-Z	

fBodyAcc-std()-X	

fBodyAcc-std()-Y	

fBodyAcc-std()-Z	

fBodyAcc-meanFreq()-X	

fBodyAcc-meanFreq()-Y	

fBodyAcc-meanFreq()-Z	

fBodyAccJerk-mean()-X	

fBodyAccJerk-mean()-Y	

fBodyAccJerk-mean()-Z	

fBodyAccJerk-std()-X	

fBodyAccJerk-std()-Y	

fBodyAccJerk-std()-Z	

fBodyAccJerk-meanFreq()-X	

fBodyAccJerk-meanFreq()-Y	

fBodyAccJerk-meanFreq()-Z	

fBodyGyro-mean()-X	

fBodyGyro-mean()-Y	

fBodyGyro-mean()-Z	

fBodyGyro-std()-X	

fBodyGyro-std()-Y	

fBodyGyro-std()-Z	

fBodyGyro-meanFreq()-X	

fBodyGyro-meanFreq()-Y	

fBodyGyro-meanFreq()-Z	

fBodyAccMag-mean()	

fBodyAccMag-std()	

fBodyAccMag-meanFreq()	

fBodyBodyAccJerkMag-mean()	

fBodyBodyAccJerkMag-std()	

fBodyBodyAccJerkMag-meanFreq()	

fBodyBodyGyroMag-mean()	

fBodyBodyGyroMag-std()	

fBodyBodyGyroMag-meanFreq()	

fBodyBodyGyroJerkMag-mean()	

fBodyBodyGyroJerkMag-std()	

fBodyBodyGyroJerkMag-meanFreq()	

angle(tBodyAccMean,gravity)	

angle(tBodyAccJerkMean),gravityMean)

angle(tBodyGyroMean,gravityMean)	

angle(tBodyGyroJerkMean,gravityMean)	

angle(X,gravityMean)	

angle(Y,gravityMean)	

angle(Z,gravityMean)

=====================================================================
All the comments of how this dataset were created are in the script 
file (run_analysis.R) as extra comments after every command that is
executed. 
At first the test and the train set were merged, after 
obtaining the data (checked if file exists, otherwise it is 
downloaded and unziped. Next, only the measurements on the mean and 
standard deviation were extracted (contained mean or std on the 
descriptive name of the variable). The descriptive names of the 
activities were used after applying the appropriate commands (used 
the y_ files and the activity labels files). The labels of the the 
variable names were replaced with the descriptive
labels (explaining what each variable measures, features file was used). 
Finally, the tidy data set with the average of each variable for each 
activity and each subject was created. Subjects were inserted in the 
dataset and then after using plyr & reshape2 packages the data set was 
melted and then by using dcast function with average was created 
 
=====================================================================
Further information on the exact description of each of the
measured variables, exist on file original_features_info.md 