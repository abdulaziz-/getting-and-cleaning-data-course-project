# We start with getting the zipped data folder 

## download,extract the zip folder to the working directory.

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName = paste(sample(100:500),"file.zip", sep="")
zipFile <- download.file(url, fileName)
unzip(zipFile)
setwd("UCI HAR Dataset")

## load the data

features <- read.csv("features.txt", sep="", header=F)
activity_labels <- read.csv("activity_labels.txt", sep="", header=F)

subject_train <- read.csv("train/subject_train.txt", sep="", header=F)
X_train <- read.csv("train/X_train.txt", sep="", header=F)
y_train <- read.csv("train/y_train.txt", sep="", header=F)

subject_test <- read.csv("test/subject_test.txt", sep="", header=F)
X_test <- read.csv("test/X_test.txt", sep="", header=F)
y_test <- read.csv("test/y_test.txt", sep="", header=F)

subject <- rbind(subject_train, subject_test)
colnames(subject) <- "subject"

outcome <- rbind(y_train, y_test)
## use activity names on the data set
outcome <- merge(outcome, activity_labels, by=1)[,2]
data <- rbind(X_train, X_test)
colnames(data) <- features[,2]

## merge the training and test sets
data <- cbind(subject,data,outcome)

## extract mean and std measurements
sub <- grep("[Mm][Ee][aA][nN]|[Ss][tT][dD]", colnames(data))
mean_std <- data[,sub]

names(mean_std) <- gsub("-", "", names(mean_std), fixed = T)
names(mean_std) <- gsub("()", "", names(mean_std), fixed = T)
names(mean_std) <- gsub(",", "and", names(mean_std), fixed = T)

## tidy the data
#means <- 
write.csv(means, "output.txt")