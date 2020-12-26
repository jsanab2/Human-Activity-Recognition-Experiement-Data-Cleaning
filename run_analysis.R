## set the working directory to the folder with the data

setwd("~/Desktop/datasciencecoursera/data cleaning course/UCI HAR Dataset")

## load libraries to be used

library(dplyr)
library(tidyr)

## Read the names from the files provided

activity_labels <- read.table("./activity_labels.txt", header = FALSE, 
                              col.names = c("activitynumber", 
                                            "activitydescription"))


features <- read.table("./features.txt", header = FALSE, 
                       col.names = c("featurenumber","featuredescription"))

## Read the training data

subject_train <- read.table("./train/subject_train.txt", header = FALSE, 
                            col.names = "subject")

x_train <- read.table("./train/X_train.txt", sep = "", header = FALSE, 
                      col.names = features$featuredescription)

y_train <- read.table("./train/y_train.txt", sep = " ", header = FALSE, 
                      col.names = "activitynumber")

## Read the test data

subject_test <- read.table("./test/subject_test.txt", header = FALSE, 
                           col.names = "subject")

x_test <- read.table("./test/X_test.txt", sep = "", header = FALSE, 
                     col.names = features$featuredescription)

y_test <- read.table("./test/y_test.txt", sep = "", header = FALSE, 
                     col.names = "activitynumber")

## Combine train and test data

x_all <- rbind(x_train, x_test)

y_all <- rbind(y_train, y_test)

subject_all <- rbind(subject_train, subject_test)

## Combine data sets to create the Human Activity Recognition Data Frame

har <- cbind(subject_all, y_all, x_all)

## Remove temporary objects

rm(subject_test, subject_train, x_test, x_train, y_test, y_train)
rm(x_all, y_all, subject_all)

## Subset Mean and Standard Deviation Data Only

harmeanstadevsubset <- select(har, subject, activitynumber, contains("mean"), 
                 contains("std"), -contains("meanFreq"))

## Apply descriptive names for the activities, rearrange and sort

harmeanstadevsubset <- merge(harmeanstadevsubset, activity_labels, 
                             by = "activitynumber")



harmeanstadevsubset <- harmeanstadevsubset %>% 
        select(2, 1, 76, 3:75) %>% 
        arrange(subject, activitynumber)

colnames(harmeanstadevsubset) <- gsub("Acc","Accelerometer",colnames(harmeanstadevsubset))
colnames(harmeanstadevsubset) <- gsub("Gyro","Gyroscope",colnames(harmeanstadevsubset))
colnames(harmeanstadevsubset) <- gsub("BodyBody","Body",colnames(harmeanstadevsubset))
colnames(harmeanstadevsubset) <- gsub("Mag","Magnitude",colnames(harmeanstadevsubset))
colnames(harmeanstadevsubset) <- gsub("^t","Time",colnames(harmeanstadevsubset))
colnames(harmeanstadevsubset) <- gsub("^f","Frequency",colnames(harmeanstadevsubset))

harsummary <- harmeanstadevsubset %>% 
        group_by(harmeanstadevsubset$activitynumber, harmeanstadevsubset$subject) %>%
        summarise_all(mean)

## Create file

write.table(harmeanstadevsubset, file = "HAR_tidy_dataset.txt", quote = FALSE
            , sep = " ", row.names = FALSE, col.names = TRUE)

write.table(harsummary, file = "HAR_summary_dataset.txt", quote = FALSE
            , sep = " ", row.names = FALSE, col.names = TRUE)
