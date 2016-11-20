```{r}
## run_analysis.R
# here I combined the two data sets by stacking them directly on top of eachother
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
df <- rbind(train, test)


# extract mean and standard deviation variables from dataset
# the features file contained the variable names
features <- read.table("./UCI HAR Dataset/features.txt")
dataNames <- as.character(features$V2)
nameIndices <- grep("mean|std", dataNames)
# dataNames now contains only variable names that measure mean and standard deviation
dataNames <- dataNames[nameIndices]


# I assigned variable names to the data set and cleaned the names by using only alphanumeric 
# characters i.e. mean() becomes mean
# I also shortened the original data frame by only considering the relevant variables
# Lastly, I appended "AVG" to each variable name so that it is clear I am taking the average
# of each variable in lower-case letters
df <- df[, nameIndices]
names(df) <- paste("AVG", gsub("[^[:alnum:]]", "", dataNames), sep = "")


# get activity data (walking, running, etc.) and cbind to data frame  
trainActivity <- read.table("./UCI HAR Dataset/train/y_train.txt")  
testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt")  
activity <- rbind(trainActivity, testActivity)  
df <- cbind(activity, df)  
names(df)[1] <- "activity"  


# now that we have a column describing the activity, we will give the activity a descriptive name  
activityName <- c("walking", "walkingUpstairs", "walkingDownstairs", "sitting", "standing", "laying")  
for(i in 1:length(df$activity)){  
    if(df$activity[i] == 1){  
        df$activity[i] <- activityName[1]  
    }else if(df$activity[i] == 2){  
        df$activity[i] <- activityName[2]  
    }else if(df$activity[i] == 3){  
        df$activity[i] <- activityName[3]  
    }else if(df$activity[i] == 4){  
        df$activity[i] <- activityName[4]  
    }else if(df$activity[i] == 5){  
        df$activity[i] <- activityName[5]  
    }else  
        df$activity[i] <- activityName[6]  
}  

# now we associate the subjects (1 - 30) with the data  
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")  
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")  
subjects <- rbind(subjectTrain, subjectTest)  
df <- cbind(subjects, df)  
names(df)[1] <- "subject"  

# here I grouped the data by subject and activity, then  
# I took the mean of all the columns using summarise_all  
# the tidy data set is TD  
by_subject_activity <- group_by(df, subject, activity)  
TD <- summarise_all(by_subject_activity, mean)
```
