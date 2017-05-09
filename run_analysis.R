library(dplyr)

# ************** PREPARE FEATURE MEASUREMENTS DATASETS **************
# read train and test feature measurements dataset
x_train <- read.table("project/X_train.txt", header = FALSE)
x_test <- read.table("project/X_test.txt", header = FALSE)
# read feature names list
feat <- read.table("project/features.txt")
# label variables of measurement datasets according to feature names list
names(x_train) <- feat[,2]
names(x_test) <- feat[,2]
# subset train and test measurement datasets to contain only measurements on mean and standard deviation
name_pattern <- "[Mm]ean\\(\\)|[Ss]td\\(\\)"
x_train_sub <- x_train[, grep(name_pattern, names(x_train))]
x_test_sub <- x_test[, grep(name_pattern, names(x_test))]

# *************** PREPARE ACTIVITY DATASETS **********
# read train and test activity datasets
y_train <- read.table("project/y_train.txt", header = FALSE)
y_test <- read.table("project/y_test.txt", header = FALSE)
names(y_train) <- "activity_id"
names(y_test) <- "activity_id"
# read activity labels dataset
act_lbl <- read.table("project/activity_labels.txt")
names(act_lbl) <- c("activity_id","activity_name")
# join activity IDs with their labels
activ_train <- inner_join(y_train, act_lbl, by = "activity_id")
activ_test <- inner_join(y_test, act_lbl, by = "activity_id")

# *************** PREPARE SUBJECT DATASETS ***********
subj_train <- read.table("project/subject_train.txt")
subj_test <- read.table("project/subject_test.txt")

# *************** MERGE ALL TOGETHER AND RENAME MEASUREMENT LABELS ****************
# merge train and test measurement datasets with corresponding activities and subjects
mrg_train <- cbind("subject_id" = subj_train[,1], "activity_name" = activ_train[,2], x_train_sub)
mrg_test <- cbind("subject_id" = subj_test[,1], "activity_name" = activ_test[,2], x_test_sub)
# merge train and test datasets together
merged_data <- union_all(mrg_train, mrg_test)

# change measuremet labels to descriptive names
# --> this is dataset which is result of points 1 to 4 of the assignment
merged_data <- rename(merged_data, 
                  time_body_accel_mean_x = `tBodyAcc-mean()-X`,
                  time_body_accel_mean_y = `tBodyAcc-mean()-Y`,
                  time_body_accel_mean_z = `tBodyAcc-mean()-Z`,
                  time_body_accel_std_x = `tBodyAcc-std()-X`,
                  time_body_accel_std_y = `tBodyAcc-std()-Y`,
                  time_body_accel_std_z = `tBodyAcc-std()-Z`,
                  time_gravity_accel_mean_x = `tGravityAcc-mean()-X`,
                  time_gravity_accel_mean_y = `tGravityAcc-mean()-Y`,
                  time_gravity_accel_mean_z = `tGravityAcc-mean()-Z`,
                  time_gravity_accel_std_x = `tGravityAcc-std()-X`,
                  time_gravity_accel_std_y = `tGravityAcc-std()-Y`,
                  time_gravity_accel_std_z = `tGravityAcc-std()-Z`,
                  time_body_accel_jerk_mean_x = `tBodyAccJerk-mean()-X`,
                  time_body_accel_jerk_mean_y = `tBodyAccJerk-mean()-Y`,
                  time_body_accel_jerk_mean_z = `tBodyAccJerk-mean()-Z`,
                  time_body_accel_jerk_std_x = `tBodyAccJerk-std()-X`,
                  time_body_accel_jerk_std_y = `tBodyAccJerk-std()-Y`,
                  time_body_accel_jerk_std_z = `tBodyAccJerk-std()-Z`,
                  time_body_gyro_mean_x = `tBodyGyro-mean()-X`,
                  time_body_gyro_mean_y = `tBodyGyro-mean()-Y`,
                  time_body_gyro_mean_z = `tBodyGyro-mean()-Z`,
                  time_body_gyro_std_x = `tBodyGyro-std()-X`,
                  time_body_gyro_std_y = `tBodyGyro-std()-Y`,
                  time_body_gyro_std_z = `tBodyGyro-std()-Z`,
                  time_body_gyro_jerk_mean_x = `tBodyGyroJerk-mean()-X`,
                  time_body_gyro_jerk_mean_y = `tBodyGyroJerk-mean()-Y`,
                  time_body_gyro_jerk_mean_z = `tBodyGyroJerk-mean()-Z`,
                  time_body_gyro_jerk_std_x = `tBodyGyroJerk-std()-X`,
                  time_body_gyro_jerk_std_y = `tBodyGyroJerk-std()-Y`,
                  time_body_gyro_jerk_std_z = `tBodyGyroJerk-std()-Z`,
                  time_body_accel_magnitude_mean = `tBodyAccMag-mean()`,
                  time_body_accel_magnitude_std = `tBodyAccMag-std()`,
                  time_gravity_accel_magnitude_mean = `tGravityAccMag-mean()`,
                  time_gravity_accel_magnitude_std = `tGravityAccMag-std()`,
                  time_body_accel_jerk_magnitude_mean = `tBodyAccJerkMag-mean()`,
                  time_body_accel_jerk_magnitude_std = `tBodyAccJerkMag-std()`,
                  time_body_gyro_magnitude_mean = `tBodyGyroMag-mean()`,
                  time_body_gyro_magnitude_std = `tBodyGyroMag-std()`,
                  time_body_gyro_jerk_magnitude_mean = `tBodyGyroJerkMag-mean()`,
                  time_body_gyro_jerk_magnitude_std = `tBodyGyroJerkMag-std()`,
                  freq_body_accel_mean_x = `fBodyAcc-mean()-X`,
                  freq_body_accel_mean_y = `fBodyAcc-mean()-Y`,
                  freq_body_accel_mean_z = `fBodyAcc-mean()-Z`,
                  freq_body_accel_mean_std_x = `fBodyAcc-std()-X`,
                  freq_body_accel_mean_std_y = `fBodyAcc-std()-Y`,
                  freq_body_accel_mean_std_z = `fBodyAcc-std()-Z`,
                  freq_body_accel_jerk_mean_x = `fBodyAccJerk-mean()-X`,
                  freq_body_accel_jerk_mean_y = `fBodyAccJerk-mean()-Y`,
                  freq_body_accel_jerk_mean_z = `fBodyAccJerk-mean()-Z`,
                  freq_body_accel_jerk_std_x = `fBodyAccJerk-std()-X`,
                  freq_body_accel_jerk_std_y = `fBodyAccJerk-std()-Y`,
                  freq_body_accel_jerk_std_z = `fBodyAccJerk-std()-Z`,
                  freq_body_gyro_mean_x = `fBodyGyro-mean()-X`,
                  freq_body_gyro_mean_y = `fBodyGyro-mean()-Y`,
                  freq_body_gyro_mean_z = `fBodyGyro-mean()-Z`,
                  freq_body_gyro_std_x = `fBodyGyro-std()-X`,
                  freq_body_gyro_std_y = `fBodyGyro-std()-Y`,
                  freq_body_gyro_std_z = `fBodyGyro-std()-Z`,
                  freq_body_accel_magnitude_mean = `fBodyAccMag-mean()`,
                  freq_body_accel_magnitude_std = `fBodyAccMag-std()`,
                  freq_body_accel_jerk_magnitude_mean = `fBodyBodyAccJerkMag-mean()`,
                  freq_body_accel_jerk_magnitude_std = `fBodyBodyAccJerkMag-std()`,
                  freq_body_gyro_magnitude_mean = `fBodyBodyGyroMag-mean()`,
                  freq_body_gyro_magnitude_std = `fBodyBodyGyroMag-std()`,
                  freq_body_gyro_jerk_magnitude_mean = `fBodyBodyGyroJerkMag-mean()`,
                  freq_body_gyro_jerk_magnitude_std = `fBodyBodyGyroJerkMag-std()`
)

# **** CREATE DATASET WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT
merged_data_grp <- group_by(merged_data, subject_id, activity_name)
# --> this is tidy dataset required for point 5 of the assignment instructions, which is uploaded to Coursera
tidy_data <- summarize(merged_data_grp, 
                        time_body_accel_mean_x = mean(time_body_accel_mean_x),
                        time_body_accel_mean_y = mean(time_body_accel_mean_y),
                        time_body_accel_mean_z = mean(time_body_accel_mean_z),
                        time_body_accel_std_x = mean(time_body_accel_std_x),
                        time_body_accel_std_y = mean(time_body_accel_std_y),
                        time_body_accel_std_z = mean(time_body_accel_std_z),
                        time_gravity_accel_mean_x = mean(time_gravity_accel_mean_x),
                        time_gravity_accel_mean_y = mean(time_gravity_accel_mean_y),
                        time_gravity_accel_mean_z = mean(time_gravity_accel_mean_z),
                        time_gravity_accel_std_x = mean(time_gravity_accel_std_x),
                        time_gravity_accel_std_y = mean(time_gravity_accel_std_y),
                        time_gravity_accel_std_z = mean(time_gravity_accel_std_z),
                        time_body_accel_jerk_mean_x = mean(time_body_accel_jerk_mean_x),
                        time_body_accel_jerk_mean_y = mean(time_body_accel_jerk_mean_y),
                        time_body_accel_jerk_mean_z = mean(time_body_accel_jerk_mean_z),
                        time_body_accel_jerk_std_x = mean(time_body_accel_jerk_std_x),
                        time_body_accel_jerk_std_y = mean(time_body_accel_jerk_std_y),
                        time_body_accel_jerk_std_z = mean(time_body_accel_jerk_std_z),
                        time_body_gyro_mean_x = mean(time_body_gyro_mean_x),
                        time_body_gyro_mean_y = mean(time_body_gyro_mean_y),
                        time_body_gyro_mean_z = mean(time_body_gyro_mean_z),
                        time_body_gyro_std_x = mean(time_body_gyro_std_x),
                        time_body_gyro_std_y = mean(time_body_gyro_std_y),
                        time_body_gyro_std_z = mean(time_body_gyro_std_z),
                        time_body_gyro_jerk_mean_x = mean(time_body_gyro_jerk_mean_x),
                        time_body_gyro_jerk_mean_y = mean(time_body_gyro_jerk_mean_y),
                        time_body_gyro_jerk_mean_z = mean(time_body_gyro_jerk_mean_z),
                        time_body_gyro_jerk_std_x = mean(time_body_gyro_jerk_std_x),
                        time_body_gyro_jerk_std_y = mean(time_body_gyro_jerk_std_y),
                        time_body_gyro_jerk_std_z = mean(time_body_gyro_jerk_std_z),
                        time_body_accel_magnitude_mean = mean(time_body_accel_magnitude_mean),
                        time_body_accel_magnitude_std = mean(time_body_accel_magnitude_std),
                        time_gravity_accel_magnitude_mean = mean(time_gravity_accel_magnitude_mean),
                        time_gravity_accel_magnitude_std = mean(time_gravity_accel_magnitude_std),
                        time_body_accel_jerk_magnitude_mean = mean(time_body_accel_jerk_magnitude_mean),
                        time_body_accel_jerk_magnitude_std = mean(time_body_accel_jerk_magnitude_std),
                        time_body_gyro_magnitude_mean = mean(time_body_gyro_magnitude_mean),
                        time_body_gyro_magnitude_std = mean(time_body_gyro_magnitude_std),
                        time_body_gyro_jerk_magnitude_mean = mean(time_body_gyro_jerk_magnitude_mean),
                        time_body_gyro_jerk_magnitude_std = mean(time_body_gyro_jerk_magnitude_std),
                        freq_body_accel_mean_x = mean(freq_body_accel_mean_x),
                        freq_body_accel_mean_y = mean(freq_body_accel_mean_y),
                        freq_body_accel_mean_z = mean(freq_body_accel_mean_z),
                        freq_body_accel_mean_std_x = mean(freq_body_accel_mean_std_x),
                        freq_body_accel_mean_std_y = mean(freq_body_accel_mean_std_y),
                        freq_body_accel_mean_std_z = mean(freq_body_accel_mean_std_z),
                        freq_body_accel_jerk_mean_x = mean(freq_body_accel_jerk_mean_x),
                        freq_body_accel_jerk_mean_y = mean(freq_body_accel_jerk_mean_y),
                        freq_body_accel_jerk_mean_z = mean(freq_body_accel_jerk_mean_z),
                        freq_body_accel_jerk_std_x = mean(freq_body_accel_jerk_std_x),
                        freq_body_accel_jerk_std_y = mean(freq_body_accel_jerk_std_y),
                        freq_body_accel_jerk_std_z = mean(freq_body_accel_jerk_std_z),
                        freq_body_gyro_mean_x = mean(freq_body_gyro_mean_x),
                        freq_body_gyro_mean_y = mean(freq_body_gyro_mean_y),
                        freq_body_gyro_mean_z = mean(freq_body_gyro_mean_z),
                        freq_body_gyro_std_x = mean(freq_body_gyro_std_x),
                        freq_body_gyro_std_y = mean(freq_body_gyro_std_y),
                        freq_body_gyro_std_z = mean(freq_body_gyro_std_z),
                        freq_body_accel_magnitude_mean = mean(freq_body_accel_magnitude_mean),
                        freq_body_accel_magnitude_std = mean(freq_body_accel_magnitude_std),
                        freq_body_accel_jerk_magnitude_mean = mean(freq_body_accel_jerk_magnitude_mean),
                        freq_body_accel_jerk_magnitude_std = mean(freq_body_accel_jerk_magnitude_std),
                        freq_body_gyro_magnitude_mean = mean(freq_body_gyro_magnitude_mean),
                        freq_body_gyro_magnitude_std = mean(freq_body_gyro_magnitude_std),
                        freq_body_gyro_jerk_magnitude_mean = mean(freq_body_gyro_jerk_magnitude_mean),
                        freq_body_gyro_jerk_magnitude_std = mean(freq_body_gyro_jerk_magnitude_std)
)

# create file required for the assignment ("From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.")
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)
