# return the list of features in a data row
getFeatures = function(loc)
{
  # read in the features available
  tmp = read.table(paste(loc,"features.txt",sep='/'))
  # ensure the labels are valid column names, and beautify the column names by replacing multiple '.' with a single '.'.
  tmp = gsub('\\.+','.',make.names(tmp$V2))
  # replace the trailing '.' if any
  tmp = gsub('\\.$','',tmp)
  # clean up the labels where 'Body' is repeated
  gsub('BodyBody','Body',tmp)
}

# return a data set with columns: Subject, Activity, Features with Mean & Std
combineFiles = function(loc,testortrain)
{
  # get the features labels
  colnames = getFeatures(loc)
  # read in the x values
  x = read.table(paste(loc,testortrain,paste("X_",testortrain,".txt",sep=''),sep='/'),comment.char = "",colClasses="numeric",col.names=colnames)
  # extract only col with labels having "mean" or "std" inside 
  x = x[colnames[grep('(mean|std)',colnames)]]
  # read in the y values
  y = read.table(paste(loc,testortrain,paste("y_",testortrain,".txt",sep=''),sep='/'),comment.char = "",col.names="Activity")
  # read in the corresponding subjects
  subject = read.table(paste(loc,testortrain,paste("subject_",testortrain,".txt",sep=''),sep='/'),col.names="Subject")
  # bind all the columns together
  cbind(subject,y,x)
}

# return a data set after relabelling the Activity column with the corresponding descriptive activity labels
relabelActivity = function(loc,data)
{
  # reorder data by Subject
  data = data[order(data$Subject),]
  # read the labels for activities
  tmp = read.table(paste(loc,"activity_labels.txt",sep='/'))
  # relabel the activity col into factor
  data$Activity = factor(data$Activity,levels=tmp$V1,labels=tmp$V2)
  # return the data set
  data
}


# start the process
start = function(loc)
{
  # bind the 'test' and 'train' data set together
  data = rbind(combineFiles(loc,"test"), combineFiles(loc,"train"))
  # reorder by subjects and relabel the activity column of the data set
  data = relabelActivity(loc,data)
  # get average of features based on Subject and Activity
  data = with(data, aggregate(data[,3:81], list(Subject = Subject,Activity = Activity), FUN = mean))
}

write.table(start("UCI HAR Dataset"),file="tidydata.txt",row.names=FALSE)