
# Importing and previewing data

heartrate <- read_csv("heartrate_seconds_merged.csv") 

View(heartrate)

# Changing 'Time' from char to POSIXct

Sys.setlocale(category = "LC_ALL", locale = "")
heartrate$Time <-as.POSIXct(heartrate$Time,format="%m/%d/%Y %I:%M:%S %p")

# Rename 'Value' to' 'Heartrate'

heartrate<-heartrate%>%
  rename(Heartbeat = Value)

View(heartrate)

# Setting 'Time' variable to include Hours only.

heartrate<-heartrate%>%
  summarize(Time_Hour=round.POSIXt(Time,units="hours"),Id,Heartbeat)


# Checking for data completion

heartrate%>%
  group_by(Id)%>%
  summarize(heartbeat_avg=mean(Heartbeat))
  