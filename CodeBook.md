Final Dataset Description 
=================

Activity_Subject
				Indicates the Activity and the subject number of each observation.
				The Activity and the subject are separated by the special character "_"
				


				
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

The complete list of variables of each feature vector is available in 'features.txt'


