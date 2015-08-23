# run_analysis.R

Code for analyzing smartphone accelometer and gyroscope data collected by
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit� degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Input data are read from './UCI HAR Dataset/', where '.' represents
the R working directory. The dataset includes the following files:

#### A. Test data
  1. 'test/X_test.txt': Test set containing ~30% of total data. Each row contains a 561-feature vector with time and frequency domain variables.
  1. 'test/y_test.txt': Test labels. Each row identifies the activity number (1 - 6) for each row in X_test.txt.
  1. 'train/subject_test.txt': Each row identifies the subject who performed the activity for each row in X_test.txt.

#### B. Training data
  1. 'train/X_train.txt': Training set containing ~70% of total data. Each row contains a 561-feature vector with time and frequency domain variables.
  1. 'train/y_train.txt': Training labels. Each row identifies the activity number (1 - 6) for each row in X_train.txt.
  1. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each row in X_train.txt.

#### C. General data (i.e., "lookup tables")
  1. 'activity_labels.txt': Links the class labels (ie, in y_test.txt and t_train.txt) with their activity names.
  1. 'features.txt': List of all 561 "features" or measures in the data sets.

## How the analysis code works
  1. Read in necessary R libraries (dplyr, tidyr, and reshape2)
  1. Read Test data files (see A. Test data above) into data frames xTest, yTest, and subTest, respectively
    1. Rename field "V1" in yTest to "actNo"
    2. Rename field "V1" in subTest to "subNo"
    3. Combine the three data frames into one df named "test" using dplyr::bind_cols
    4. Add field "subgroup" with value "Test" to indicate these data came from the Test data set
  1. Read in all Training data files (see B. Training data above) into data frames xTrain, yTrain, and subTrain, respectively
    1. Rename field "V1" in yTrain to "actNo"
    2. Rename field "V1" in subTrain to "subNo"
    3. Combine the three data frames into one df named "train" using dplyr::bind_cols
    4. Add field "subgroup" with value "Training" to indicate these data came from the Training data set
  1. Get activity labels data
    1. Read activity labels file (C.1. above) into data frame "actLabels"
    1. Change field names in data frame "actLabels" to "actNo" and "Activity"
  1. Combine data frames
    1. Combine data frames "test" and "train" into single data frame named "full" using dplyr::bindrows
    1. Merge df "actLabels" into "full" so that column full.Activity contains activity names
  1. Read features file (C.2. above) into data frame "features"
  1. 
  1. 
  1. 
  1. 
  1. 
  1. 
  1. 
  1. 
  1. 
  1. 
  1. 
