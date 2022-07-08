#Importing and previewing data.

weight<-read_csv("weightLogInfo_merged.csv")

str(weight)

#Changing 'Date' from char to POSIXct.

weight$Date<-as.POSIXct(weight$Date,format=("%m/%d/%Y %I:%M:%S %p"))

View(weight)

#Round up time to hours and select relevant columns.

weight<-weight%>%
  summarize(Dates=
  round.POSIXt(Date,units="hours"),Id,WeightKg,BMI,IsManualReport,LogId)

#Checking completion.

weight_check<-weight%>%
  group_by(Id)%>%
  summarize(avg_weight=mean(WeightKg))

View(weight_check)
               