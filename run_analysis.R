setwd("C:/Users/Pooja/Desktop/Coursera_DataSpecialization/GettingandCleaningData/Course_Assignment/getdata-projectfiles-UCIHARDataset/UCIHARDataset")
library(plyr)
library(dplyr)


#read data into tables
# read training data, subject labels, activity labels, features

train <- read.table("train/X_train.txt", header= FALSE)
train_labels <- read.table("train/y_train.txt",header = FALSE )
subtrain <-read.table("train/subject_train.txt", header=FALSE)

test <- read.table("test/X_test.txt", header=FALSE)
test_labels <- read.table("test/y_test.txt",header = FALSE )
subtest <-read.table("test/subject_test.txt", header=FALSE)

activity_labels <- read.table("activity_labels.txt", header= FALSE)
#activity <- activity_labels[,2]
features <- read.table("features.txt", header=FALSE)


###############################PART 1########################################

## Merge train, test and subject data
data_merge <- rbind(train, test)

label_merge <- rbind(train_labels, test_labels)

subject_merge <- rbind(subtrain, subtest)

###################################PART2 #######################
# Extracting mean and std column names 

n <- names(data_merge) <- as.character(features$V2)

subset <- grep("-(mean|std)\\(\\)", n)
meanstd_data <- data_merge[subset]



#validnames <-make.names(n=names(data_merge), unique = TRUE, allow_ = TRUE)
#n <- validnames
#meanstd_data <- select(data_merge, contains("-mean()"), contains("-std()"))



#################################PART3##########################

# Appropriately label descriptive activity labels with each subject

label_merge[,1] <- activity_labels[label_merge[,1],2]

names(label_merge)<- "Activity"

names(subject_merge) <- "Subject"

 ################################PART4###########################

# Appropriate Labels for easy reading and combine all data
# update the names for just the extracted data
n <- names(meanstd_data)

# Rename for easy reading
n <- gsub("-","",n)
n <- gsub("\\(\\)","",n)
n <- gsub("tBody","Body",n)
n <- gsub("fBody","Body",n)
n <- gsub("tGravity","Gravity",n)
n <- gsub("Acc","Acceleration",n)
n <- gsub("Gyro","Gyroscope",n)
n <- gsub("Mag","Magnitude",n)
n <- gsub("X","X-axis",n)
n <- gsub("Y","Y-axis",n)
n <- gsub("Z","Z-axis",n)


# Combine all data for mean and std measurements

combined_data <- cbind(subject_merge, label_merge, meanstd_data)
#names(combined_data) <- n

###############################PART5##############################
#creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.

tidy_set <- ddply(combined_data, .(Subject, Activity), function(x) colMeans(x[, 3:68]))

write.table(tidy_set,"tidy_set.txt", row.names = FALSE)







