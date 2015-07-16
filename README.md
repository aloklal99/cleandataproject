## Introduction
This repository contains deliverables for the "Getting and Cleaning Data" course conducted from July 6, 2015 to August 1, 2015 on Coursera as part of the "Data Science" Signature track course series.

## Contents
- `README.md`: This file!  It contains details about contents of this repository and instructions on how to run the script to generate the project deliverables.
- `CodeBook.md`: Provides details about the generated data so that results of the deliverables can be consumed by others.
- `run_analysis.R`: The R script file which will generate the results file.

## Instructions on running the R script

### Prerequisites
- In keeping with the instructions for the project _this script expects the Samsung data to be in the working directory_ of this script exits.
- Hence, first off, please download the test data from the link provided on the website.  This should be a file named `getdata-projectfiles-UCI HAR Dataset.zip`.
- Next, unzip this file in the same directory as the script file.  This should create the directory `UCI HAR Dataset` in the script's directory.
- Please don’t make any changes to the data in this directory, e.g. renaming files, etc.
- Script also expects the `dplyr` package to be avilable

### Running the scripts
- Run the script by running the following command
```    
	R -q -f run_analysis.R > log
```
- When this script starts it checks to see if the data directory (UCI HAR Dataset) exits or not.  It will abort if steps #1 above were not done correctly.
- Some of the data files are quite large and it takes a long time to load the data.  So please be patient while running the script! :)
- Script emits out progress information.
- When the script finishes it should generate a file named `result.txt` in the same directory.

### Sample transcript of running the script
Here is a transcript of the scripts run on my machine.  You will notice that it prints progress information on the console.  Redircting output to log file keeps the clutter on the screen to a minimum.
```
	~/cleandataproject $ R -q -f run_analysis.R > log

	Attaching package: ‘dplyr’

	The following object is masked from ‘package:stats’:

	    filter

	The following objects are masked from ‘package:base’:

	    intersect, setdiff, setequal, union

	Current working directory is: ~/cleandataproject
	Checking if the data directory "UCI HAR Dataset" exists or not.
	Changing working directory to data directory: ~/cleandataproject/UCI HAR Dataset
	Reading in the list of features...
	Found 561 features.
	Looking for feature denoting mean or standard deviation...
	Found 66 varibles realted to mean or standard deviation
	Building user friendly column names from these feature names...
	Read the activity names...
	Building user friendly activity names...
	Reading in the test data sets
	   Read in subjects...
			 found 2947 subject variables
		 Read in activities...
			 found 2947 activity variables
		 Read in data variables. This may take a long time...
			 found 2947 rows of data each with 561 data variables in each row
			 Subsetting the data variables to extract variables related to mean and standard deviation
		 Combining the subject, activity and data variables together...
	Reading in the training data sets
		 Read in subjects...
			 found 7352 subject variables
		 Read in activities...
			 found 7352 activity variables
		 Read in data variables. This may take a long time...
			 found 7352 rows of data each with 561 data variables in each row
			 Subsetting the data variables to extract variables related to mean and standard deviation
		 Combining the subject, activity and data variables together...
	Combining the test and training data sets into one...
	Combined data: rows=10299, cols=68
	Now summarizing the data by activity and subject...
Setting the column names of the result to generated friendly column names
Writing the final results out to file: result.txt
Done!  Please review the results file in current directory.

~/cleandataproject $
```
