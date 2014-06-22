############## Question 1 ###########################################

# Insert the test dataset into R as test
test <- read.table("test//X_test.txt", quote="\"")

# Insert the train dataset into R as train
train <- read.table("train//X_train.txt", quote="\"")

# Create the full dataset (total) by combining the train & test dataset
total <- rbind(test,train)

################ Question 2 #########################################

# Insert the features dataset into R, in order to use it for naming the columns
features <- read.table("features.txt", quote="\"")

# Filtering the features dataset in order to keep only the
# columns that include mean and standard deviation for each oservation
features <- features[grep(c("std|mean"), features$V2, ignore.case=T),]

# Create a vector with the desired columns for the final dataset
columns <- paste("V",features$V1, sep="")

# Subset the total dataset by keeping just the desired variables
# (include mean and standard deviation)
total <- total[, columns]

############### Question 3,4 ##########################################

# Insert the test activity number dataset into R
test_activ_numb <- read.table("test//y_test.txt", quote="\"")

# Insert the train activity number dataset into R
train_activ_numb <- read.table("train//y_train.txt", quote="\"")

# Create the full activity number dataset by combining the train 
# & test activity number dataset
all_activ_numb <- rbind(test_activ_numb,train_activ_numb)

# Transform the first column to factor
all_activ_numb$V1 <- as.factor(all_activ_numb$V1)

# Insert the activity labels dataset into R
activity_labels <- read.table("activity_labels.txt", quote="\"")

# Merge activity labels & numbers 
activity_labels_final <- merge(all_activ_numb,activity_labels)

# Change the names of the variables in the total dataset to be 
# more descriptive
names(total) <- features$V2

# Insert activity as a new variable in the total dataset  
total$Activity <- activity_labels_final$V2



############## Question 5 #####################################

# Insert the test subject number dataset into R
test_subjects <- read.table("test//subject_test.txt", quote="\"")

# Insert the train subject number dataset into R
train_subjects <- read.table("train//subject_train.txt", quote="\"")

# Create the full subject dataset by combining the train & test subject
# number dataset
subjects <- rbind(read.table("test//subject_test.txt", quote="\""),read.table("train//subject_train.txt", quote="\""))

# Insert subject as a new variable in the total dataset  
total$Subject <- subjects$V1

# Combine Activity & Subject in the total dataset
total$Activity_Subject <- paste(total$Activity, total$Subject, sep="_")

# Create a vector with just the variables with measures
totalnames <- names(total[1:86])

# Create the melt dataset where we melt th???????????????
melt <- melt(total, id=c("Activity_Subject"), measure.vars=totalnames)

# Create the second dataset with the averages of all variables by 
# activity and subject
total_average <- dcast(melt, Activity_Subject ~ variable, mean)

# Re-arrange the columns ??????????????????
total_average <- total_average[,c(89,88,2:87)]

# Extract the dataset into the working directory as total_average
write.table(total_average,"total_average.txt", sep=",")