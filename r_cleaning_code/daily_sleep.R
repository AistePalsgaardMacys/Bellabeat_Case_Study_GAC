#Importing and previewing data.

sleep<-read_csv("sleepDay_merged.csv")

str(sleep)

# Change 'SleepDay' into POSIXct.

Sys.setlocale(category="LC_ALL",locale="")
sleep$SleepDay<-as.POSIXct(sleep$SleepDay,format=("%m/%d/%Y %I:%M:%S %p"))


# Check for completion.

sleep_check<-sleep%>%
  group_by(Id)%>%
  summarize(total_mintes_asleep_avg=mean(TotalMinutesAsleep))


