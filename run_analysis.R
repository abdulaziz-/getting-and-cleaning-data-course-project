# We start with getting the zipped data folder 

# download the zip folder to the working directory.

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- download.file(url, "file.zip")
unzip(zipFile, exdir = ".")

# load the data

# merge the training and test sets

# extract mean and std measurements

# use activity names on the data set

# label the data set

# tidy the data
