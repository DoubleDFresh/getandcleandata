## 1.  Read in the test set files into one large data.frame called "X_test"

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = c("activity_num"))
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, col.names = c("indx", "feature_col"), stringsAsFactors = FALSE)

##  Use make.names() to create R-friendly column names 
features <- transform(features, feature_col = make.names(feature_col))

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = c("subject"))
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names = c("activity_num", "activity_txt"), stringsAsFactors = FALSE)

## Rename X_test columns and append subject test identifier to X_test

names(X_test)[1:561] <- features$feature_col
X_test$subject <- subject_test$subject

## Append y_test to X_test
X_test$activity_num <- y_test$activity_num

## Add a new column to X_test that appends the activity_label text value

X_test$activity_labels <- activity_labels[X_test$activity_num,2]




## 2. Now read in the training data into one large data.frame called "X_train"

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = c("activity_num"))
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)


subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = c("subject"))

## Rename X_test columns and append subject test identifier to X_test

names(X_train)[1:561] <- features$feature_col
X_train$subject <- subject_train$subject

## Append y_train to X_train
X_train$activity_num <- y_train$activity_num

## Add a new column to X_train that appends the activity_label text value

X_train$activity_labels <- activity_labels[X_train$activity_num,2]


## 3. Now append X_test to X_train

X_all <- rbind(X_test, X_train)




## Extract only the measurements on the mean and standard devication for each measurement

X_new <- X_all[,c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 294:296, 345:350, 373:375, 424:429, 452:454, 503:504, 513, 516:517, 526, 529:530, 539, 542:543, 552, 555:564)]
## Uses descriptive activity names to name the activities in the data set



## Appropriately labels the data set with descriptive variable names. 


## Creates a second, independent tidy data set with the average of each variable for each activity 
#  and each subject.

