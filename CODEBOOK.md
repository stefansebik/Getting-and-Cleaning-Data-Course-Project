# Code Book  
  
****
###Note on measurement variables name format:  
Variable name contain following components (separated by underscore):  
1. time|freq - Time or Frequency domain measurement  
2. body|gravity - Body or Gravity related measurement  
3. accel|gyro - Accelerometer or Gyroscope related measurement  
4. jerk  - Jerk related measurement (optional)  
5. magnitude - Magnitude of measured signal (optional)  
6. mean|std - Mean or Standard Deviaton calculation  
7. x|y|z - Axis of measurement (optional)  
  
For detailed explanation of measurements' background, read **feature_info.txt** of the original dataset.
  
****
  
**subject_id** (integer)  
Unique identifier of subject (person) who performed measured activities
  
**activity_name** (character)  
Name of measured activity. Possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
  
**time_body_accel_mean_x** (numeric)  
Time domain body acceleration mean on X axis of the phone  
  
**time_body_accel_mean_y** (numeric)  
Time domain body acceleration mean on Y axis of the phone  
  
**time_body_accel_mean_z** (numeric)  
Time domain body acceleration mean on Z axis of the phone  
  
**time_body_accel_std_x** (numeric)  
Time domain body acceleration standard deviation on X axis of the phone  
  
**time_body_accel_std_y** (numeric)  
Time domain body acceleration standard deviation on Y axis of the phone  
  
**time_body_accel_std_z** (numeric)  
Time domain body acceleration standard deviation on Z axis of the phone  
  
**time_gravity_accel_mean_x** (numeric)  
Time domain gravity acceleration mean on X axis of the phone  
  
**time_gravity_accel_mean_y** (numeric)  
Time domain gravity acceleration mean on Y axis of the phone  
  
**time_gravity_accel_mean_z** (numeric)  
Time domain gravity acceleration mean on Z axis of the phone  
  
**time_gravity_accel_std_x** (numeric)  
Time domain gravity acceleration standard deviation on X axis of the phone  
  
**time_gravity_accel_std_y** (numeric)  
Time domain gravity acceleration standard deviation on Y axis of the phone  
  
**time_gravity_accel_std_z** (numeric)  
Time domain gravity acceleration standard deviation on Z axis of the phone  
  
**time_body_accel_jerk_mean_x** (numeric)  
Time domain body acceleration jerk mean on X axis of the phone  
  
**time_body_accel_jerk_mean_y** (numeric)  
Time domain body acceleration jerk mean on Y axis of the phone  
  
**time_body_accel_jerk_mean_z** (numeric)  
Time domain body acceleration jerk mean on Z axis of the phone  
  
**time_body_accel_jerk_std_x** (numeric)  
Time domain body acceleration jerk standard deviation on X axis of the phone  

**time_body_accel_jerk_std_y** (numeric)  
Time domain body acceleration jerk standard deviation on Y axis of the phone  
  
**time_body_accel_jerk_std_z** (numeric)  
Time domain body acceleration jerk standard deviation on Z axis of the phone  
  
**time_body_gyro_mean_x** (numeric)  
Time domain body velocity mean on X axis of the phone  
  
**time_body_gyro_mean_y** (numeric)  
Time domain body velocity mean on Y axis of the phone  
  
**time_body_gyro_mean_z** (numeric)  
Time domain body velocity mean on Z axis of the phone  
  
**time_body_gyro_std_x** (numeric)  
Time domain body velocity standard deviation on X axis of the phone  
  
**time_body_gyro_std_y** (numeric)  
Time domain body velocity standard deviation on Y axis of the phone  
  
**time_body_gyro_std_z** (numeric)  
Time domain body velocity standard deviation on Z axis of the phone  
  
**time_body_gyro_jerk_mean_x** (numeric)  
Time domain body velocity jerk mean on X axis of the phone  
  
**time_body_gyro_jerk_mean_y** (numeric)  
Time domain body velocity jerk mean on Y axis of the phone  
  
**time_body_gyro_jerk_mean_z** (numeric)  
Time domain body velocity jerk mean on Z axis of the phone  
  
**time_body_gyro_jerk_std_x** (numeric)  
Time domain body velocity jerk standard deviation on X axis of the phone  
  
**time_body_gyro_jerk_std_y** (numeric)  
Time domain body velocity jerk standard deviation on Y axis of the phone  
  
**time_body_gyro_jerk_std_z** (numeric)  
Time domain body velocity jerk standard deviation on Z axis of the phone  
  
**time_body_accel_magnitude_mean** (numeric)  
Time domain body acceleration magnitude mean  
  
**time_body_accel_magnitude_std** (numeric)  
Time domain body acceleration magnitude standard deviation  
  
**time_gravity_accel_magnitude_mean** (numeric)  
Time domain gravity acceleration magnitude mean  
  
**time_gravity_accel_magnitude_std** (numeric)  
Time domain gravity acceleration magnitude standard deviation  
  
**time_body_accel_jerk_magnitude_mean** (numeric)  
Time domain body acceleration jerk magnitude mean  
  
**time_body_accel_jerk_magnitude_std** (numeric)  
Time domain body acceleration jerk magnitude standard deviation  
  
**time_body_gyro_magnitude_mean** (numeric)  
Time domain body velocity magnitude mean  
  
**time_body_gyro_magnitude_std** (numeric)  
Time domain body velocity magnitude standard deviation  
  
**time_body_gyro_jerk_magnitude_mean** (numeric)  
Time domain body velocity jerk magnitude mean  
  
**time_body_gyro_jerk_magnitude_std** (numeric)  
Time domain body velocity jerk magnitude standard deviation  
  
**freq_body_accel_mean_x** (numeric)  
Frequency domain body acceleration mean on X axis of the phone  
  
**freq_body_accel_mean_y** (numeric)  
Frequency domain body acceleration mean on Y axis of the phone  
  
**freq_body_accel_mean_z** (numeric)  
Frequency domain body acceleration mean on Z axis of the phone  
  
**freq_body_accel_mean_std_x** (numeric)  
Frequency domain body acceleration standard deviation on X axis of the phone  
  
**freq_body_accel_mean_std_y** (numeric)  
Frequency domain body acceleration standard deviation on Y axis of the phone  
  
**freq_body_accel_mean_std_z** (numeric)  
Frequency domain body acceleration standard deviation on Z axis of the phone  
  
**freq_body_accel_jerk_mean_x** (numeric)  
Frequency domain body acceleration jerk mean on X axis of the phone  
  
**freq_body_accel_jerk_mean_y** (numeric)  
Frequency domain body acceleration jerk mean on Y axis of the phone  
  
**freq_body_accel_jerk_mean_z** (numeric)  
Frequency domain body acceleration jerk mean on Z axis of the phone  
  
**freq_body_accel_jerk_std_x** (numeric)  
Frequency domain body acceleration jerk standard deviation on X axis of the phone  
  
**freq_body_accel_jerk_std_y** (numeric)  
Frequency domain body acceleration jerk standard deviation on Y axis of the phone  
  
**freq_body_accel_jerk_std_z** (numeric)  
Frequency domain body acceleration jerk standard deviation on Z axis of the phone  
  
**freq_body_gyro_mean_x** (numeric)  
Frequency domain body velocity mean on X axis of the phone  
  
**freq_body_gyro_mean_y** (numeric)  
Frequency domain body velocity mean on Y axis of the phone  
  
**freq_body_gyro_mean_z** (numeric)  
Frequency domain body velocity mean on Z axis of the phone  
  
**freq_body_gyro_std_x** (numeric)  
Frequency domain body velocity standard deviation on X axis of the phone  
  
**freq_body_gyro_std_y** (numeric)  
Frequency domain body velocity standard deviation on X axis of the phone  
  
**freq_body_gyro_std_z** (numeric)  
Frequency domain body velocity standard deviation on X axis of the phone  
  
**freq_body_accel_magnitude_mean** (numeric)  
Frequency domain body acceleration magnitude mean  
  
**freq_body_accel_magnitude_std** (numeric)  
Frequency domain body acceleration magnitude standard deviation  
  
**freq_body_accel_jerk_magnitude_mean** (numeric)  
Frequency domain body acceleration jerk magnitude mean  
  
**freq_body_accel_jerk_magnitude_std** (numeric)  
Frequency domain body acceleration jerk magnitude standard dviation  
  
**freq_body_gyro_magnitude_mean** (numeric)  
Frequency domain body velocity magnitude mean  
  
**freq_body_gyro_magnitude_std** (numeric)  
Frequency domain body velocity magnitude standard deviation  
  
**freq_body_gyro_jerk_magnitude_mean** (numeric)  
Frequency domain body velocity jerk magnitude mean  
  
**freq_body_gyro_jerk_magnitude_std** (numeric)  
Frequency domain body velocity jerk magnitude standard deviation  
  
