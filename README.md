How to run the run_analysis.R script.
========================================================

This readme explains how to run the run_analysis.R script that downloads the data from the course website and processes it for your review and further analysis.

Requirements: Must have R installed.  RStudio is not required, but is recommended.

Steps to run the run_analysis.R script:

* Download the run_analysis.R script (from the repo) to the desired working directory.

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

If the data has been previously downloaded from the course website, then this script will recognize that and not download it again.  The contents of the tidyData data frame and how it was cleaned up and summarized are explained in the CodeBook.md.


Review the results of the tidyData data frame at your leisure. 