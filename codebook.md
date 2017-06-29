###In order to obtain statistical information of human activity recognition, an experiment was conducted on the recording of subjects performing activities of daily living(ADL) wearing a smartphone (Samsung Galaxy S II) on the waist.


##Study design
###The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
###Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz
###After some transformations we deduce 33 others censors signals ( most of them  are Time domain signals, others are frequency domain signals).
###Each of them were then normalized and bounded within [-1,1].




##Summarized analysis
### -> In a first step all of these signals were sampled in fixed-width sliding windows of 2.56 sec.
A plurality of statistical quantities ( 561 features) are then obtained within each of these time windows, for all of these 33 censors signals. 
The resulting data set contains 563 columns ( one column for activities, one for subjects , 561 for features), each row corresponds to one particular activity, one particular subject and one particular fixed_width sliding window of 2.56 sec 



### -> In a second step, the rows of this data set are grouped by activity and subject in order to determine  average on all fixed_width sliding windows of each feature  (but only those relating to mean and standard deviation estimates: note that we remove features of  censors signals for which we estimate only the mean )    
Therefore the resulting data set contains 68 columns ( one column for activities, one for subjects , 66=33*2 for remaining features) , Each row corresponds to one particular activity, one particular subject.


##List of variables (68 variables)


###The first two variables are related to a specifiq row  ( each row   corresponds to one particular activity and one particular subject) :    

Name             ->                        Description  

nameactiv        ->               descriptive name  of activity      
numsubject       ->               ID number of volunteer ( from 1 to 30)      


###The 66 remaining variables are average for all fixed_width sliding windows of the 66 following statistical estimates (only mean and std relating to one particular fixed_width sliding window :    

Name                ->                 Description       
MeanOftBodyAccOnX   ->        Mean of Body acceleration On X   
MeanOftBodyAccOnY   ->        Mean of Body acceleration On Y  
MeanOftBodyAccOnZ   ->        Mean of Body acceleration On Z  
StdOftBodyAccOnX    ->        Standard deviation of Body acceleration On X   
StdOftBodyAccOnY    ->        Standard deviation of Body acceleration On Y    
StdOftBodyAccOnZ    ->        Standard deviation of Body acceleration On Z    
MeanOftGravityAccOnX->     Mean of Gravity acceleration On X   
MeanOftGravityAccOnY->     Mean of Gravity acceleration On Y   
MeanOftGravityAccOnZ->     Mean of Gravity acceleration On Z  
StdOftGravityAccOnX ->    Standard deviation of Gravity acceleration On X    
StdOftGravityAccOnY ->      Standard deviation of Gravity acceleration On Y      
StdOftGravityAccOnZ ->      Standard deviation of Gravity acceleration On Z      
MeanOftBodyAccJerkOnX->    Mean of Body acc.. Jerk On X   
MeanOftBodyAccJerkOnY->    Mean of Body acc.. Jerk On Y  
MeanOftBodyAccJerkOnZ->    Mean of Body acc.. Jerk On Z  
StdOftBodyAccJerkOnX ->    Standard deviation of Body acc.. Jerk On X   
StdOftBodyAccJerkOnY ->    Standard deviation of Body acc.. Jerk On Y    
StdOftBodyAccJerkOnZ ->    Standard deviation of Body acc.. Jerk On Z   
MeanOftBodyGyroOnX   ->    Mean of Body Gyro On X   
MeanOftBodyGyroOnY   ->    Mean of Body Gyro On Y  
MeanOftBodyGyroOnZ   ->    Mean of Body Gyro On Z  
StdOftBodyGyroOnX    ->    Standard deviation of Body Gyro On X   
StdOftBodyGyroOnY    ->    Standard deviation of Body Gyro On Y  
StdOftBodyGyroOnZ    ->    Standard deviation of Body Gyro On Z  
MeanOftBodyGyroJerkOnX->   Mean of Body Gyro Jerk On X   
MeanOftBodyGyroJerkOnY->   Mean of Body Gyro Jerk On Y  
MeanOftBodyGyroJerkOnZ->   Mean of Body Gyro Jerk On Z  
StdOftBodyGyroJerkOnX ->   Standard deviation of Body Gyro Jerk  On X   
StdOftBodyGyroJerkOnY ->   Standard deviation of Body Gyro Jerk	On Y  
StdOftBodyGyroJerkOnZ ->   Standard deviation of Body Gyro Jerk	On Z   
MeanOftBodyAccMag     ->   Mean of Body Acc.. Magnitude   
StdOftBodyAccMag      ->   Standard deviation of Body Acc.. Magnitude   
MeanOftGravityAccMag  ->   Mean of Gravity Acc.. Magnitude   
StdOftGravityAccMag   ->   Standard deviation of Gravity Acc.. Magnitude   
MeanOftBodyAccJerkMag ->   Mean of Body Acc.. Jerk Magnitude  
StdOftBodyAccJerkMag  ->   Standard deviation of Body Acc.. Jerk Magnitude  
MeanOftBodyGyroMag    ->   Mean of Body Gyro Magnitude   
StdOftBodyGyroMag     ->   Standard deviation of Body Gyro Magnitude   
MeanOftBodyGyroJerkMag->   Mean of Body Gyro Jerk Magnitude  
StdOftBodyGyroJerkMag ->   Standard deviation of Body Gyro Jerk   Magnitude  
MeanOffBodyAccOnX     ->   Mean of frequency Body acceleration 	On X   
MeanOffBodyAccOnY     ->   Mean of frequency Body acceleration 	On Y  
MeanOffBodyAccOnZ     ->   Mean of frequency Body acceleration		On Z  
StdOffBodyAccOnX      ->   Standard deviation of frequency Body	acc.. On X   
StdOffBodyAccOnY      ->   Standard deviation of frequency Body	acc.. On Y  
StdOffBodyAccOnZ      ->   Standard deviation of frequency Body 	acc.. On Z  
MeanOffBodyAccJerkOnX ->   Mean of frequency Body acc.. Jerk  On X   
MeanOffBodyAccJerkOnY ->   Mean of frequency Body acc.. Jerk  On Y  
MeanOffBodyAccJerkOnZ ->   Mean of frequency Body acc.. Jerk  On Z  
StdOffBodyAccJerkOnX  ->   Standard deviation of frequency Body acc.. Jerk On X   
StdOffBodyAccJerkOnY  ->   Standard deviation of frequency Body acc.. Jerk On Y   
StdOffBodyAccJerkOnZ  ->   Standard deviation of frequency Body acc.. Jerk On Z   
MeanOffBodyGyroOnX    ->   Mean of frequency Body Gyro On X   
MeanOffBodyGyfoOnY    ->   Mean of frequency Body Gyro On Y  
MeanOffBodyGyroOnZ    ->   Mean of frequency Body Gyro On Z  
StdOffBodyGyroOnX     ->   Standard deviation of frequency Body Gyro On X   
StdOffBodyGyroOnY     ->   Standard deviation of frequency Body Gyro On Y  
StdOffBodyGyroOnZ     ->   Standard deviation of frequency Body Gyro On Z  
MeanOffBodyAccMag     ->   Mean of frequency Body Acc.. Magnitude  
StdOffBodyAccMag      ->   Standard deviation of frequency Body Acc..Magnitude     
MeanOffBodyAccJerkMag ->   Mean of frequency Body Acc.. Jerk	Magnitude    
StdOffBodyAccJerkMag  ->   Standard deviation of frequency Body Acc.. Jerk Magnitude  
MeanOffBodyGyroMag    ->   Mean of frequency Body Gyro	Magnitude   
StdOffBodyGyroMag     ->   Standard deviation of frequency Body Gyro Magnitude   
MeanOffBodyGyroJerkMag->   Mean of frequency Body Gyro Jerk Magnitude  
StdOffBodyGyroJerkMag ->   Standard deviation of frequency Body Gyro Jerk Magnitude  