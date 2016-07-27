library(dplyr)

# get the names of the variables and the index for the means
# and standard deviations
labels <- read.table("features.txt")[,2]
labelsstdmeanindex <- grep("mean|std", labels)

# read all the training data, keeping only the columns for means
# and standard deviations
train <- read.table("train/X_train.txt", col.names = labels)[,labelsstdmeanindex] %>%
  cbind(read.table("train/subject_train.txt", col.names = "subject")) %>%
  cbind(read.table("train/y_train.txt", col.names = "activity", colClasses="factor"))

# read all the testing data, keeping only the columns for means
# and standard deviations
test <- read.table("test/X_test.txt", col.names = labels)[,labelsstdmeanindex] %>%
  cbind(read.table("test/subject_test.txt", col.names = "subject")) %>%
  cbind(read.table("test/y_test.txt", col.names = "activity", colClasses="factor"))

# combine training and testing data, throwing out temporary variables
alldata <- rbind(train, test)
rm(train, test)

# rename the activity factors
levels(alldata$activity) <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", 
                              "STANDING", "LAYING")

# melt all the data to get one row per subject/activity/variable combo
# then take that melted data and cast it to get the mean for each
# variable for each subject/activity combo
casted <- melt(alldata, id=c("subject", "activity")) %>%
  dcast(subject + activity ~ variable, mean)

# save our data from previous step
write.table(casted, file="varAvgsBasedOnSubjectAndActivity.txt")