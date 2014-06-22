How to run the run_analysis.R script.
========================================================

This readme explains how to run the run_analysis.R script that downloads the data from the course website and processes it for your review and further analysis.

Requirements: Must have R installed.  RStudio is not required, but is recommended.

Steps to run the run_analysis.R script:

1. Download the run_analysis.R script (from the repo) to the desired working directory.

2. Start R or RStudio, depending on user's preference.

3. Set the working directory to the desired directory that the files downloaded from the course website should be placed.  This should be the same directory as where the run_analysis.R scripted was placed.  
``` {r}
>setwd("full path to desired directory")
```

4. Load the run_analysis.R script:  
``` {r}
>source("run_analysis.R")
```

5. Run the run_analysis.R script to clean up and summarize the data.  
``` {r}
>tidyData <- run_analysis()
```

      Note: If the data has been previously downloaded from the course website, then this script will recognize that and not download it again.

Review the results of the tidyData data frame at your leisure.  

The contents of the tidyData data frame and how it was cleaned up and summarized are explained in the CodeBook.md.