# here I combined the two data sets by stacking them directly on top of eachother
train <- read.table("./train/X_train.txt")
test <- read.table("./test/X_test.txt")
df <- rbind(train, test)


# extract mean and standard deviation variables from dataset
# the features file contained the variable names
features <- read.table("./features.txt")
dataNames <- as.character(features$V2)
nameIndices <- grep("mean|std", dataNames)
# dataNames now contains only variable names that measure mean and standard deviation
dataNames <- dataNames[nameIndices]


# I assigned variable names to the data set and cleaned the names by using only alphanumeric 
# characters i.e. mean() becomes mean
# I also shortened the original data frame by only considering the relevant variables
df <- df[, nameIndices] 
names(df) <- paste("AVG", gsub("[^[:alnum:]]", "", dataNames), sep = "")


# get activity data (walking, running, etc.) and cbind to data frame
trainActivity <- read.table("./train/y_train.txt")
testActivity <- read.table("./test/y_test.txt")
activity <- rbind(trainActivity, testActivity)
df <- cbind(activity, df)
names(df)[1] <- "activity"


# now that we have a column describing the activity, we will give the activity a descriptive name
activityName <- c("walking", "walkingUpstairs", "walkingDownstairs", "sitting", "standing", "laying")
df$activity <- activityName[df$activity]

# now we associate the subjects with the data
subjectTrain <- read.table("./train/subject_train.txt")
subjectTest <- read.table("./test/subject_test.txt")
subjects <- rbind(subjectTrain, subjectTest)
df <- cbind(subjects, df)
names(df)[1] <- "subject"

# here I grouped the data by subject and activity, then
# I took the mean of all the columns using summarise_all
# the tidy data set is TD
by_subject_activity <- group_by(df, subject, activity)
TD <- summarise_all(by_subject_activity, mean)

