<<<<<<< HEAD
=======================================================================
Tidy Data for Human Activity Recognition Using Smartphones Dataset
Version 1.0
===========================================
Pooja Vijaygopal 
Course Project for Getting and Cleaning Data through Coursera submitted on 07/25/2015
========================================================================

The following project is for obtaining a tidy data set from the raw data. 
Please refer to the Codebook for the names and description of each variable used. 

The steps used to achieve the tidy data set is as follows:

1. The data is read into tables from the working directory under the folder UCI HAR Dataset

2. In Part 1, the data for the each set of train and test data is merged. This includes the actual measurement data defined by the features, the label for each activity [1-6] 
   and the label for each subject [1-30]

3. In Part 2, the names of the features in subsetted to access the index for the columns containing mean() and std() measurements of features.
   The actual measurements data for mean() and std() is then subsetted using this index from the merged data set in Part 1. 

4. In Part 3, the description of activitities is mapped/factored onto the activity labels derived from Part 1. 
   The data thus derived is renamed suitably as "Activity" and the subject data is also renamed as "Subject". 

5. In Part 4, the features' names for measurements are renamed for easy reading by the user. With all datasets suitably renamed for ease of use, a combined data set is produced for the extracted data and 
   is presented as a wide form of data (i.e. each subject for each avtivity is a different observation)

6. In Part 5, a second data set with the average of each feature measurement for each subject based on each activity is calculated 
   and written to a new text file. This is the tidy data. 
  
  
=======
# Getting-and-Cleaning-Data
>>>>>>> 1e70db884a5f09181e628cf0ed195ad58689a79a
