test <- read.table("test//X_test.txt", quote="\"")

train <- read.table("train//X_train.txt", quote="\"")

total <- rbind(test,train)

features <- read.table("features.txt", quote="\"")


features <- features[grep(c("std|mean"), features$V2, ignore.case=T),]

columns <- paste("V",features$V1, sep="")

total <- total[, columns]

test_activ_numb <- read.table("test//y_test.txt", quote="\"")

train_activ_numb <- read.table("train//y_train.txt", quote="\"")

all_activ_numb <- rbind(test_activ_numb,train_activ_numb)

all_activ_numb$V1 <- as.factor(all_activ_numb$V1)

activity_labels <- read.table("activity_labels.txt", quote="\"")

activity_labels_final <- merge(all_activ_numb,activity_labels)

names(total) <- features$V2

total$Activity <- activity_labels_final$V2

test_subjects <- read.table("test//subject_test.txt", quote="\"")

train_subjects <- read.table("train//subject_train.txt", quote="\"")



subjects <- rbind(read.table("test//subject_test.txt", quote="\""),read.table("train//subject_train.txt", quote="\""))

total$Subject <- subjects$V1

total$Activity_Subject <- paste(total$Activity, total$Subject, sep="_")

totalnames <- names(total[1:86])



melt <- melt(total, id=c("Activity_Subject"), measure.vars=totalnames)

total_average <- dcast(melt, Activity_Subject ~ variable, mean)


#total_average$Subject <- lapply(strsplit(as.character(total_average$Activity_Subject), "\\_"), "[", 2)
#total_average$Activity <- lapply(strsplit(as.character(total_average$Activity_Subject), "\\_"), "[", 1)

total_average <- total_average[,c(89,88,2:87)]

#total_average$Activity2 <- as.factor(total_average$Activity)

write.table(total_average,"total_average.txt", sep=",")

##################