getandcleandata
===============

Getting and Cleaning Data repo

###run.analysis.R is divided into 4 major sections
1. It merges the test and training data sets into 1 data set
2. It then extracts only the mean and standard deviations of the entire data set
3. It creates a tidy data set (narrow) called X_melt consisting of 4 columns:
#1 - the subject
#2 - the subject's activity
#3 - the description of the mean or standard deviation of a variable being measured
#4 - the value