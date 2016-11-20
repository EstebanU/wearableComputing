The variables here have all been extracted from the Human Activity Recognition Using Smartphones Dataset. The first two variables account for the subject identified by number (1 - 30), and the activity: walking, walking downstairs, walking upstairs, siting, standing, and laying.  

Only variable names that compute the mean or standard deviation of that particular variable have been included. They are listed below: 
 
 [1] subject                        
 [2] activity                       
 [3] AVGtBodyAccmeanX               
 [4] AVGtBodyAccmeanY               
 [5] AVGtBodyAccmeanZ               
 [6] AVGtBodyAccstdX                
 [7] AVGtBodyAccstdY                
 [8] AVGtBodyAccstdZ                
 [9] AVGtGravityAccmeanX            
[10] AVGtGravityAccmeanY            
[11] AVGtGravityAccmeanZ            
[12] AVGtGravityAccstdX            
[13] AVGtGravityAccstdY            
[14] AVGtGravityAccstdZ             
[15] AVGtBodyAccJerkmeanX           
[16] AVGtBodyAccJerkmeanY           
[17] AVGtBodyAccJerkmeanZ           
[18] AVGtBodyAccJerkstdX            
[19] AVGtBodyAccJerkstdY            
[20] AVGtBodyAccJerkstdZ            
[21] AVGtBodyGyromeanX              
[22] AVGtBodyGyromeanY              
[23] AVGtBodyGyromeanZ              
[24] AVGtBodyGyrostdX               
[25] AVGtBodyGyrostdY               
[26] AVGtBodyGyrostdZ               
[27] AVGtBodyGyroJerkmeanX          
[28] AVGtBodyGyroJerkmeanY          
[29] AVGtBodyGyroJerkmeanZ          
[30] AVGtBodyGyroJerkstdX           
[31] AVGtBodyGyroJerkstdY           
[32] AVGtBodyGyroJerkstdZ           
[33] AVGtBodyAccMagmean             
[34] AVGtBodyAccMagstd              
[35] AVGtGravityAccMagmean         
[36] AVGtGravityAccMagstd          
[37] AVGtBodyAccJerkMagmean        
[38] AVGtBodyAccJerkMagstd         
[39] AVGtBodyGyroMagmean            
[40] AVGtBodyGyroMagstd           
[41] AVGtBodyGyroJerkMagmean        
[42] AVGtBodyGyroJerkMagstd         
[43] AVGfBodyAccmeanX               
[44] AVGfBodyAccmeanY               
[45] AVGfBodyAccmeanZ               
[46] AVGfBodyAccstdX                
[47] AVGfBodyAccstdY                
[48] AVGfBodyAccstdZ                
[49] AVGfBodyAccmeanFreqX           
[50] AVGfBodyAccmeanFreqY           
[51] AVGfBodyAccmeanFreqZ           
[52] AVGfBodyAccJerkmeanX           
[53] AVGfBodyAccJerkmeanY           
[54] AVGfBodyAccJerkmeanZ           
[55] AVGfBodyAccJerkstdX            
[56] AVGfBodyAccJerkstdY            
[57] AVGfBodyAccJerkstdZ            
[58] AVGfBodyAccJerkmeanFreqX       
[59] AVGfBodyAccJerkmeanFreqY       
[60] AVGfBodyAccJerkmeanFreqZ       
[61] AVGfBodyGyromeanX              
[62] AVGfBodyGyromeanY              
[63] AVGfBodyGyromeanZ              
[64] AVGfBodyGyrostdX               
[65] AVGfBodyGyrostdY               
[66] AVGfBodyGyrostdZ               
[67] AVGfBodyGyromeanFreqX          
[68] AVGfBodyGyromeanFreqY          
[69] AVGfBodyGyromeanFreqZ          
[70] AVGfBodyAccMagmean             
[71] AVGfBodyAccMagstd              
[72] AVGfBodyAccMagmeanFreq        
[73] AVGfBodyBodyAccJerkMagmean     
[74] AVGfBodyBodyAccJerkMagstd      
[75] AVGfBodyBodyAccJerkMagmeanFreq
[76] AVGfBodyBodyGyroMagmean        
[77] AVGfBodyBodyGyroMagstd         
[78] AVGfBodyBodyGyroMagmeanFreq    
[79] AVGfBodyBodyGyroJerkMagmean    
[80] AVGfBodyBodyGyroJerkMagstd     
[81] AVGfBodyBodyGyroJerkMagmeanFreq

#Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/sec^2). 
- The gyroscope units are rad/seg.

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
