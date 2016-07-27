We were given an untidy data set of measurements called "Human Activity Recognition Using Smartphones Dataset"
test/X_test.txt contained the measurements
test/subject_test.txt contained the subject identifiers for each measurement
test/y_test.txt contained the activity identifiers for each measurement

There were files of the same format for the training data in the train folder.

The features.txt file contained the variable names for all the measurements.

In this analysis we are only interested in the mean and standard deviation variables, so first we grep through the features.txt file to find the column indexes of these mean and std variable names.

Then, once for the training data and once for the test data, we read in the X (selecting only the variables found using the grep above), subject, and y files as described above. subject and y files simply contain one column each that fits with our measurements in the X file. So we cbind all three of these files together into one data frame each for train and test.
Now that train and test are two data frames with the same number of variables in the same places, we rbind them together to combine the rows into one big data frame that has all of the data in it.

We know the proper names for the activities so rather than using the numbers from the file, we rename all the activities with "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING".

The goal is to get the mean for each of the variables in all of the data for each subject/activity combination. For instance, for each of the 79 variables, we want the mean for subject 15 and activity WALKING, as well as every other combination of subject/activity.
To get this first we have to "melt" the data, so we end up with a very narrow data frame containing, on each row, a subject, activity, variable name, and value of that variable. Once we have this, we can use dcast to provide a mean of each variable based on each subject/activity combo. This is the final result that we were looking for, and we write this data frame as the text file varAvgsBasedOnSubjectAndActivity.txt