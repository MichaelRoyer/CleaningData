Overview
========================================================
The course project purposes to demonstrate collecting, working with, and cleaning a data set with the goal in mind to prepare tidy data that can be used for review and further analysis.  

The CodeBook.md (from this repo) contains a brief description of the source data experiments conducted, a description of the kind of data collected and selected from that source data, the work performed to summarize the source data of interest, and the resulting summarized tidy data that was required by this assignment.  

This README.md document describes the system requirements and the steps required to create the tidy data.  Creating the tidy data primarily involves running the run_analysis.R script documented below in the How To Create The Data section.  The run_analysis.R script summarizes the source data of interest into the tidy data and an explanation of it is in the Work Performed To Summarize Source Data section in the CodeBook.md.  It seemed more fitting to describe the transformations that were applied to the source data to get it to the tidy data (i.e., what the run_analysis.R script does) there rather than here giving a complete picture from start to finish.

System Requirements
===================
Requirements: Must have R installed.  RStudio is not required, but is recommended.

How To Create The Data
======================

Steps to run the run_analysis.R script:

* Download the run_analysis.R script (from this repo) to the desired working directory.

* Start R or RStudio, depending on user's preference.

* Set the working directory to the desired directory that the files downloaded from the course website should be placed.  This should be the same directory as where the run_analysis.R scripted was placed.  
``` {r}
>setwd("full path to desired directory")
```

* Load the run_analysis.R script:  
``` {r}
>source("run_analysis.R")
```

* Run the run_analysis.R script to clean up and summarize the data.  
``` {r}
>tidyData <- run_analysis()
```

If the data has been previously downloaded from the course website, then this script will recognize that and not download it again. 
