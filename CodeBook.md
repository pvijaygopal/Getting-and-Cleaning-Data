===================================================================
CodeBook for Course Assignment in Getting and Cleaning Data
===================================================================

# This is the list of variables and their description used in run_analyis.R

train: feature measurements defined under the training data set 

train_labels: activity labels for training data 

subtrain : subject labels for training data

test: feature measurements defined under the test data set 

test_labels: activity labels for test data 

subtest: subject labels for training data

activity_labels: Description of activities pertaining to the activity labels

features: list of features of measurement 

data_merge: Merged data for train and test data sets

label_merge:Merged data for activity labels for train and test sets

subject_merge: Merged data for subject labels for train and test sets


n: array of names of data_merge with appropriate label changes

subset:subset of n containing "mean" and "std" strings

meanstd_data: subset of data_merge containing "mean" and "std" strings

combined_data: consolidated data set of extracted mean and std columns for each subject based on each activity

tidy_set: Final tidy set 








