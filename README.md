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

- 'train/X_train.txt': Training set containing ~70% of total data. Each row contains a 561-feature vector with time and frequency domain variables.
- 'train/y_train.txt': Training labels. Each row identifies the activity number (1 - 6) for each row in X_train.txt.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each row in X_train.txt.

- 'test/X_test.txt': Test set containing ~30% of total data. Each row contains a 561-feature vector with time and frequency domain variables.
- 'test/y_test.txt': Test labels. Each row identifies the activity number (1 - 6) for each row in X_test.txt.
- 'train/subject_test.txt': Each row identifies the subject who performed the activity for each row in X_test.txt.

- 'features.txt': List of all "features" or measures in data set.

- 'activity_labels.txt': Links the class labels (ie, in y_test.txt and t_train.txt) with their activity names.


