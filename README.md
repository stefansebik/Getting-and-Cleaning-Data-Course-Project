# Getting and Cleaning Data Course Project

This project processes data from the source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) according to the following conceptual steps required in the assignment:      
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

**Notes on processing script:**  

* First 3 processing steps are implemented in diferent order to assignment:  
    1. Measurement train and test datasets are labeled in order to extract only mean and standard deviaton related columns. Column identification rules are following: Those columns, that contain 'Mean()', 'mean()', 'Std()' or 'std()' within column name are taken into account  
    2. Activities and Subjects datasets are prepared  
    3. Measurements, Activities and Subject datasets are merged together and Train and Test datasets are merged  
  
* each command within script file **run_analysis.R** is commented. Therefore please see the file itself for detailed processing explanation.   
* Tidy data set required in step 5 follows "wide form". Its validity is in detail explained here: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/  
* Tidy data set submitted into Coursera, can be loaded into R using the following command:  
```  
tidy <- read.table("tidy_data.txt", header = TRUE)
```  
  
**Source data files used for processing**:  
(for full file description see README.txt of the source dataset)  

- 'X_train.txt'  
- 'X_test.txt'  
- 'features.txt'  
- 'y_train.txt'  
- 'y_test.txt'  
- 'activity_labels.txt'  
- 'subject_train.txt'  
- 'subject_test.txt'  
  
  
### Repository contains the following files:

- 'README.md': This text  
  
- 'run_analysis.R': R script processing source files to desired outputs according to the assignment  
  
- 'CODEBOOK.md': Code book that contains explanatory information of output datasets structure  
  
- 'tidy_data.txt' - data output of processing step 5 of the assignment instructions 
  
- 'src/*': files of the original dataset, that are used for the assignment  
  