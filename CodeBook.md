# Getting and Cleaning Data: Course Project: CodeBook

## General description (from features_info.txt of original data)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 

The X,Y,Z for each entry indicate the 3D dimensional directions.
The first two columns indicate the activities and subjects, respectively.
The remaining columns contain the means of the variables computed for each combination of activity and subject.

## Activities carried out by the subjects
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

## Subjects carrying out the activities
30 subjects numbered 1 through 30

## Time-domain raw body accelerometer signal
tBodyAcc-mean()-X         
tBodyAcc-mean()-Y            
tBodyAcc-mean()-Z               
tBodyAcc-std()-X               
tBodyAcc-std()-Y                
tBodyAcc-std()-Z

## Time-domain raw gravity accelerometer signal
tGravityAcc-mean()-X            
tGravityAcc-mean()-Y           
tGravityAcc-mean()-Z            
tGravityAcc-std()-X             
tGravityAcc-std()-Y             
tGravityAcc-std()-Z
            
## Time-domain derived body linear acceleration
tBodyAccJerk-mean()-X           
tBodyAccJerk-mean()-Y           
tBodyAccJerk-mean()-Z           
tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y            
tBodyAccJerk-std()-Z            

## Time-domain raw gyro 3-axial signal
tBodyGyro-mean()-X             
tBodyGyro-mean()-Y             
tBodyGyro-mean()-Z              
tBodyGyro-std()-X               
tBodyGyro-std()-Y               
tBodyGyro-std()-Z              

## Time-domain derived body angular velocity
tBodyGyroJerk-mean()-X          
tBodyGyroJerk-mean()-Y          
tBodyGyroJerk-mean()-Z          
tBodyGyroJerk-std()-X         
tBodyGyroJerk-std()-Y           
tBodyGyroJerk-std()-Z           

## Time-domain magnitude values of the above groups 
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
         
## Frequency-domain raw body accelerometer signal
fBodyAcc-mean()-X               
fBodyAcc-mean()-Y               
fBodyAcc-mean()-Z               
fBodyAcc-std()-X               
fBodyAcc-std()-Y                
fBodyAcc-std()-Z

## Frequency-domain raw body accelerometer signal weighted average      
fBodyAcc-meanFreq()-X           
fBodyAcc-meanFreq()-Y          
fBodyAcc-meanFreq()-Z

## Frequency-domain derived body linear acceleration
fBodyAccJerk-mean()-X           
fBodyAccJerk-mean()-Y           
fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X            
fBodyAccJerk-std()-Y            
fBodyAccJerk-std()-Z      

## Frequency-domain derived body linear acceleration weighted average 
fBodyAccJerk-meanFreq()-X      
fBodyAccJerk-meanFreq()-Y       
fBodyAccJerk-meanFreq()-Z       

## Frequency-domain raw gyro 3-axial signal
fBodyGyro-mean()-X              
fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z              
fBodyGyro-std()-X               
fBodyGyro-std()-Y               
fBodyGyro-std()-Z              

## Frequency-domain raw gyro 3-axial signal weighted average
fBodyGyro-meanFreq()-X          
fBodyGyro-meanFreq()-Y          
fBodyGyro-meanFreq()-Z          

## Frequency-domain magnitude values of the above groups 
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

