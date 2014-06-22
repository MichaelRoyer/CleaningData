run_analysis <- function() {
    
##  Print working direcory.
    wd <- getwd()
    message("Working directory is ", wd)

##  Download project data (if not already acquired).
    downloadZip <- "getdata_projectfiles_UCI HAR Dataset.zip"
    if (file.exists(paste("./", downloadZip, sep=""))) {
        message("Project data has already been downloaded.")
        downloadFlag <- FALSE
    } else {
        downloadFlag <- TRUE
    }
    if (downloadFlag == TRUE) {    
        message("Downloading project data.")
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl,downloadZip)
    }

##  Unzip the downloaded file (if not already unzipped).
    if (!file.exists("./UCI HAR Dataset")) {
        message("Unzipping project data.")
        unzip(downloadZip)
    }
    
##  Check that necessary folders and files exist.
    resourceExists <- function(x, type="directory") {
        if (!file.exists(x)) {
            message("Error in download. Necessary ", type," ", x, " does not exist.")
            return(FALSE)
        } else {
            return(TRUE)
        }
    }
    if (resourceExists("./UCI HAR Dataset") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/test") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/test/X_test.txt","file") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/test/y_test.txt","file") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/test/subject_test.txt","file") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/train") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/train/X_train.txt","file") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/train/y_train.txt","file") == FALSE) {return()}
    if (resourceExists("./UCI HAR Dataset/train/subject_train.txt","file") == FALSE) {return()}

    message("All necessary files available for loading.")

## Load project data.
    message("Loading raw data.")

    setwd(paste(wd,"/UCI HAR Dataset",sep=""))
    features <- read.table("features.txt")
    activity_labels <- read.table("activity_labels.txt")

    setwd(paste(wd,"/UCI HAR Dataset/test",sep=""))
    x_test <- read.table("X_test.txt")
    y_test <- read.table("y_test.txt")
    subject_test <- read.table("subject_test.txt")

    setwd(paste(wd,"/UCI HAR Dataset/train",sep=""))
    x_train <- read.table("X_train.txt")
    y_train <- read.table("y_train.txt")
    subject_train <- read.table("subject_train.txt")

    message("Raw data loaded.")

    message("Organizing raw data.")

##  Combine similar train and test datasets together.
    x_raw <- rbind(x_test,x_train)
    y_raw <- rbind(y_test,y_train)
    subject_raw <- rbind(subject_test,subject_train)

##  Apply the descriptive name to the activity related column.
    y_raw2 <- as.character(y_raw$V1)
    for (i in 1:length(activity_labels$V1)) {
        y_raw2[y_raw2==as.character(activity_labels$V1[i])] <- as.character(activity_labels$V2[i])
    }
    y_raw3 <- as.data.frame(y_raw2)

##  Initially name the columns based on the features dataset.
    colnames(x_raw) <- features$V2
    colnames(y_raw3) <- c("Activity")
    colnames(subject_raw) <- c("Subject_ID")

##  Merge all the loaded data together.
    merged_raw <- cbind(subject_raw, y_raw3, x_raw)

##  Extract the the columns of interest.
    colSubset <- c("Subject_ID", "Activity", grep("mean",features$V2,value=TRUE), grep("std",features$V2,value=TRUE))
    tidy <- subset(merged_raw, select=colSubset)

##  Better label the tidy column names.
    colSubset <- gsub("fBody","Time_Body",colSubset)
    colSubset <- gsub("tBody","Freq_Body",colSubset)
    colSubset <- gsub("tGravity","Time_Gravity",colSubset)
    colSubset <- gsub("-std()","_SD",colSubset)
    colSubset <- gsub("-mean()","_Mean",colSubset)
    colSubset <- gsub("-","_",colSubset)
    colSubset <- gsub('[()]','',colSubset)
    colSubset <- gsub("BodyBody","Body",colSubset)
    colSubset <- gsub("MeanFreq","Mean_Freq",colSubset)
    colSubset <- gsub("Acc","_Accelerometer",colSubset)
    colSubset <- gsub("Gyro","_Gyroscope",colSubset)
    colSubset <- gsub("Jerk","_Jerk_Signal",colSubset)
    colSubset <- gsub("Mag","_Mag",colSubset)

    colnames(tidy) <- colSubset

##  Average each tidy variabe by Subject_ID and Activity.
    tidy_Avgs <- suppressWarnings(aggregate.data.frame(x = tidy, by = list(tidy$Subject_ID, tidy$Activity), FUN = "mean"))
    tidy_Avgs$Subject_ID <- NULL
    tidy_Avgs$Activity <- NULL
    colnames(tidy_Avgs) <- colSubset

    message("Data prepared for review and further analysis.")

##  Reset the working directory back to the original setting.
    setwd(wd)

##  Return results.
    result <- tidy_Avgs
    return(result)

}
