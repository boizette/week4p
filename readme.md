###The purpose of script run_analysis.R is to collect a lot of statistics data on human Activity Recognition initially contained in many files and   to bring them together in an unique data set . Secondly the obtained data.set is gradually transformed in a tidy data set which  can be used for later analysis.   
At the beginning of script, all the available information is localized in a few  files located in  the R working directory.
At the end of script, the obtainded tidy data set is saved in a file called partiel.txt located in the same folder (R working directory)


The overall work is broken in five steps    
  
##STEP 1: group together 6 data.frames including data on human Activity Recognition  :  
* 3 Data.frames (derived from files X_test.txt, subject_test.txt and finally Y_test.txt located in the  R working directory) contain  information on ID numbers of activity (6 types of activity) , identification numbers of subjects (9 out of 30 volunteers of the experiment) and finally results of the experiment on this sample (561 features of Human activity  per volonteer and per activity))  
* 3 Data.frame (derived from files X_train.txt, subject_train.txt and finally Y_train.txt located in the R working directory) contain  information on ID numbers of activity (6 types of activity) , identification numbers of subjects (21 out of 30 volunteers of the experiment) and finally results of the experiment on this sample (561 features of Human Activity per volonteer and per activity)   
  
## in a single data.frame which is called total  
   
   
      
  
    
    
      
      
##STEP 2: extract only, among the 561 columns features of human activity ( contained in data.frame total) , those relating to the calculation of mean and standard deviation  (only 66 remaining features)   
###The resulting data.frame  is called partiel  


##STEP 3: Use descriptive activity names to name the activities in the data set   
###Replace in the data set partiel  the column num_activ containing activity numbers (1 to 6 ) by a column called nom_activ containing textual descriptions of activity (using the file activity._labels.txt    
(located in the working directory) which contain the correspondence between activity number and activity name)     


##STEP 4: choose appropriate labels of the 66 columns of measurements of human activity:   
###Descriptive name of each column must be clear : names contained in the file features.txt (located in the working directory are used as a model  



##STEP 5:  transform  the data set in step 4 by calculating averages on the multiples Windows of Time of the 66 features for each subject and each activity.   
###The final data set is tidy and should be saved in one file (called.partiel.txt) located in the current R working directory   