#Importing and previewing data.

steps<- read_csv("hourlySteps_merged.csv")

str(steps)

#Changing 'ActivityHour' to POSIXct.

steps$ActivityHour<-as.POSIXct(steps$ActivityHour,format=("%m/%d/%Y %I:%M:%S %p"))

#Checking for completion.

steps_check<-steps%>%
  group_by(Id)%>%
  summarize(steps_avg=mean(StepTotal))