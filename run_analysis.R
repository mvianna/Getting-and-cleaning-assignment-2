setwd("c://Users//Marcio Vianna Filho//Dropbox//Coursera//Getting and cleaning data//Final project//")

##	The usual read.csv() function couldn't read the X_( ).txt files adequately
##	because an NA would be introduced every time a double spaces was found.
##	I opted to write the read.ssv() function, which reads the files as a
##	single long string, eliminates the double spaces, and converts the
##	single character string into a table.

read.ssv <- function(file.raw) {
	con <- file(file.raw, "r")
	test <- readLines(con)
	close(con)
	test <- gsub("\ {2,}", "\ ", test) # eliminates double spaces
	test <- gsub("^\ +", "", test) # eliminates spaces at the beginning of a line
	test <- strsplit(test, " ")
	test <- lapply(test, as.numeric)
	return(test)
}

##	Read the measurements in the test and train datasets

test <- read.ssv(".//UCI HAR Dataset//test//X_test.txt")
train <- read.ssv(".//UCI HAR Dataset//train//X_train.txt")

##	Merge test and train data

DF1 <- append(test, train)

##	Calculate a column of DF with the means and a column of DF with the sd

DF <- data.frame(mean = matrix(sapply(DF1, mean), ncol=1))
DF$sd <- sapply(DF1, sd)

##	Read the activity data

test <- read.csv(".//UCI HAR Dataset//test//y_test.txt", sep=" ", header=F, col.names=c("ac_id"))
train <- read.csv(".//UCI HAR Dataset//train//y_train.txt", sep=" ", header=F, col.names=c("ac_id"))

##	Merge test and train activity data and add as a column to DF

DF$ac_id <- as.factor(rbind(test, train)[,1])

##	Read table with the correspondence between activity identifier and activity name

ac.lab <- read.csv(".//UCI HAR Dataset//activity_labels.txt", sep=" ", header=F, col.names=c("ac_id", "activity"))

##	Add to DF a column with activity names according to activity identifiers

DF <- merge(DF, ac.lab) # the merge is done by the column "ac_id", common to both tables
DF <- DF[-1] # remove the "ac_id" column as it is no longer needed

##	Read the subject data

test <- read.csv(".//UCI HAR Dataset//test//subject_test.txt", sep=" ", header=F, col.names=c("subject"))
train <- read.csv(".//UCI HAR Dataset//train//subject_train.txt", sep=" ", header=F, col.names=c("subject"))

##	Merge test and train subject data and add as a column to DF

DF$subject <- as.factor(rbind(test, train)[,1])

##	Build a separate dataset with the average of each measurement for each subject and activity

DF2 <- aggregate(mean ~ activity + subject, data=DF, FUN = mean)

