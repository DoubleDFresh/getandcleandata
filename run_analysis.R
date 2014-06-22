## Merge the training and test sets to create one data set.

y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
features <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE, col.names = c("indx", "feature_col"), stringsAsFactors = FALSE)
features <- transform(features, feature_col = make.names(feature_col))
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, colClasses = "character")


## Extract only the measurements on the mean and standard devication for each measurement


## Uses descriptive activity names to name the activities in the data set


## Appropriately labels the data set with descriptive variable names. 


## Creates a second, independent tidy data set with the average of each variable for each activity 
#  and each subject.

