
## 0. download file and get into the directory
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip', 'destfile.zip')
unzip('destfile.zip')
setwd('UCI HAR Dataset')

## 1. load all data, preferably with correct names... (so yeah, the step numbers don't match perfectly...)
features <- read.table("./features.txt", header = FALSE, sep=" ")
activity_labels <- read.table("./activity_labels.txt", header = FALSE, sep=" ", col.names = c("activity_code", "activity_name"))
subject_train <- read.table("./train/subject_train.txt", col.names = c("subject"))
subject_test <- read.table("./test/subject_test.txt", col.names = c("subject"))
X_test <- read.fwf("./test/X_test.txt", rep(16,561), col.names=features[,2])
X_train <- read.fwf("./train/X_train.txt", rep(16,561), col.names=features[,2])
y_train <- read.fwf("./train/y_train.txt", c(1))
y_test <- read.fwf("./test/y_test.txt", c(1))

## 2. bind all data
subject <- rbind(subject_test, subject_train)
X <- rbind(X_test, X_train)
## these are the columns we want, those that speak about means or standard deviations (or some other standard, whatever... :P)
goodcols <- sort(append(grep("mean", features[,2], ignore.case=TRUE),grep("std", features[,2], ignore.case=TRUE)))
X <- X[,goodcols]
y <- rbind(y_test, y_train)
## merge will reorder the elements, so let's save the original order first...
y <- cbind(1:dim(y)[1], y)
colnames(y) <- c("ordering", "activity_code")
y <- merge(y,activity_labels)
## we restore the original order, and remove that column (we don't need it anymore)
y <- y[order(y[,"ordering"]),][,c("activity_code","activity_name")]
## this is lost for reasons I don't know...
colnames(X) <- features[,2][goodcols]

## 3. We don't use the inertial folder according to the FAQ, our data is this:
tidydata <- cbind(subject,y,X)

## 4. we obtain the second tidy data (with averages)
tidydata2 <- aggregate(tidydata[,4:dim(tidydata)[2]],tidydata[,c("subject","activity_name")],mean)
## and label it properly, 
colnames(tidydata2) <- append(colnames(tidydata2)[1:2],paste("average_of_", colnames(tidydata2)[3:dim(tidydata2)[2]],sep=""))

## 5. All this took some precious time in our computer, let's save it
write.table(tidydata, "assignment3-result1.txt", row.names=FALSE)
write.table(tidydata2, "assignment3-result2.txt", row.names=FALSE)

## 6. We are done, it doesn't look that hard now, does it? :P