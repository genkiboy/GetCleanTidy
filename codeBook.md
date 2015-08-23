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
  1. Measure - Factor w/ 477 levels *but* in reality, only 66 levels remain. (I couldn't work out how to remove the additional factor levels using droplevels(), etc.)
