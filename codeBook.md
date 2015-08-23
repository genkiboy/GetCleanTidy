# Code book for file KES_GetClean_Step5_Tidy.txt 

The data file is composed of four elements :
  1. subNo - integer - the subject number from the original data set, comprised of 1 to 30, inclusive
  1. Activity - Factor w/ 6 levels - test describing each of the six activities for which measures were taken:
    1. WALKING
    2. WALKING_UPSTAIRS
    3. WALKING_DOWNSTAIRS
    4. SITTING
    5. STANDING
    6. LAYING [sic]
  1. Measure - Factor w/ 477 levels (though in reality, only 66 levels remain. I couldn't work out how to remove the additional factor levels using droplevels(), etc.). These 66 levels are formed from a combination of:
    1. The following 33 signals ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.):
      1. tBodyAcc-XYZ (3 signals)
      1. tGravityAcc-XYZ (3 signals)
      1. tBodyAccJerk-XYZ (3 signals)
      1. tBodyGyro-XYZ (3 signals)
      1. tBodyGyroJerk-XYZ (3 signals)
      1. tBodyAccMag
      1. tGravityAccMag
      1. tBodyAccJerkMag
      1. tBodyGyroMag
      1. tBodyGyroJerkMag
      1. fBodyAcc-XYZ (3 signals)
      1. fBodyAccJerk-XYZ (3 signals)
      1. fBodyGyro-XYZ (3 signals)
      1. fBodyAccMag
      1. fBodyAccJerkMag
      1. fBodyGyroMag
      1. fBodyGyroJerkMag 
    2. The following two (2) variables estimated from each signal:
      3. Mean
      4. Standard deviation
  1. meanValue - numeric - the mean value for each unique combination of subNo, Activity, and Measure
