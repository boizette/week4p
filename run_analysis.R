run_analysis <- function() {

##step 1: collect data  on human Activity Recognition included in 6 files
## and group them together in a single data set 
  
####1.1 load 6 data sets from 6 files in the current directory  
testactiv<-read.table("./y_test.txt",header=FALSE)
names(testactiv)<-"numactiv"
testvars<-read.table("./x_test.txt",header=FALSE)
testsubjects<-read.table("./subject_test.txt",header=FALSE)
names(testsubjects)<-"numsubject"

trainactiv<-read.table("./y_train.txt",header=FALSE)
names(trainactiv)<-"numactiv"
trainvars<-read.table("./x_train.txt",header=FALSE)
trainsubjects<-read.table("./subject_train.txt",header=FALSE)
names(trainsubjects)<-"numsubject"

####1.2 group together 3 data.frames  related to the test sample ( 9 subjects)  
test<-cbind(testsubjects,testactiv,testvars)
####1.3 group together 3 data.frames  related to the train sample ( 21 subjects)
train<-cbind(trainsubjects,trainactiv,trainvars)

####1.4 merge the two datasets test et train 
tout<-rbind(test,train,make.row.names=FALSE)
#### the data.frame tout contains all useful information  for following actions
#### Now  the data.frame tout has 563 cols ( labelled :numsubjects, numactiv, and 561 measurements  )

## step 2:reduce the number of columns. by eXtracting only  
## the measurements on the mean and standard déviation for each measurement
####2.1 loading from one file the dataset containing textual descriptions of all measurements  
textfeatures<-read.table("./features.txt",header=FALSE)
####2.2 Retrieving columns numbers for columns titles containing words "mean(" ou "std(")
numvars<-textfeatures$V1[grepl("-mean\\(",textfeatures$V2)|grepl("-std\\(",textfeatures$V2)]
txtvars<-as.character(textfeatures$V2[grepl("-mean\\(",textfeatures$V2)|grepl("-std\\(",textfeatures$V2)])
####2.3 Dismiss the other measurements columns: 
partiel<-tout[c(1,2,2+numvars)] 
#### now  the data.frame partiel has only 68 cols ( labelelled :numsubjects, numactiv, and 66 measurements  )

## step 3: Name the activity in the data set by descriptive activity names
####3.1 loading from one file the dataset containing textual descriptions of all activities  
activity<-read.table("./activity_labels.txt",header=FALSE)
####3.2 replace in data set partiel column containing activity ID by column containing activity description  
names(activity)<-c("numactiv","nameactivity")
partiel<-merge(activity,partiel,by.x="numactiv",by.y="numactiv")
partiel<-partiel[-1]
#### now the cols activity labelled "nameactivity" (of data set partiel) contain text description of activity
#### and the col labelled "numactiv" is removed

## step 4: Appropriately labels the data set columns with descriptive variable names
#### 4.1: Appropriately labels the data set columns related to means
txtvars<-strsplit(txtvars,"-mean\\(")
recond1<-function(x){ifelse(is.na(x[2]),x[1],paste("MeanOf",x[1],x[2],sep=""))}
txtvars<-sapply(txtvars,recond1)
#### 4.2: Appropriately labels the data set columns related to standard deviations
txtvars<-strsplit(txtvars,"-std\\(")
recond2<-function(x){ifelse(is.na(x[2]),x[1],paste("StdOf",x[1],x[2],sep=""))}
txtvars<-sapply(txtvars,recond2)
#### 4.3: remove titles characters parenthesis characters and "-" 
txtvars<-gsub(")","",txtvars)
txtvars<-gsub("-","On",txtvars)
#### 4.4: replace the old titles with the new ones 
names(partiel)<-c("nameactiv","numsubject",txtvars)
#### now all the cols of data set partiel are clearly labelled

## step 5: build a Second data set with the average of each variable for each subject and each activity
#### 5.1 modify data set partiel to make it tiny : 
#### with 66 cols of measurements (averages of mean and also averages of std)
library(dplyr)
partiel<-group_by(partiel,nameactiv,numsubject)
partiel<-summarize_all(partiel,mean)
####5.2 write  dataset partiel in file partiel.CSV 
write.table(partiel,file="./partiel.txt",row.names=FALSE,sep=",",dec=".")


}      