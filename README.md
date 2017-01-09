# Getting and Cleaning Data Course Project

The R file ("run_analysis.R") obtains the data, reads different files, 
does the needed requirements found in the instructions of the project:


    1. Read raw data files into memory (features.txt, activity_labels.txt, X_train.txt, y_train.txt, X_test.txt, y_test.txt, subject_train.txt, subject_test.txt)
    2. Add subject and label columns into training and testing sets.
    3. Merge training and testing sets.
    4. Changing column names into descriptive feature names.
    5. Extract mean and std (~88) columns from merged table.
    6. Calculate average of each feature variable in merged table for each subject and each activity.
    7. Export the final tidy data table into .txt file for future processing and analysis.
