# We start with getting the zipped data folder 

## download,extract the zip folder to the working directory.

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName = paste(sample(100:500),"file.zip", sep="")
zipFile <- download.file(url, fileName)
unzip(zipFile)
setwd("UCI HAR Dataset")

## load the data

features <- read.csv("features.txt", sep="")
activity_labels <- read.csv("activity_labels",sep="")



## merge the training and test sets

## extract mean and std measurements

## use activity names on the data set

## label the data set

## tidy the data
