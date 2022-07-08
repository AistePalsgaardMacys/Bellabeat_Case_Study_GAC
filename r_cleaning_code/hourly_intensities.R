library(readr)

# Importing & previewing data

hourlyIntensities<-read_csv("hourlyIntensities_merged.csv")

head(hourlyIntensities)

# Changing 'ActivityHour' into POSIXct.

Sys.setlocale(category = "LC_ALL", locale = "")
hourlyIntensities$ActivityHour <-as.POSIXct(hourlyIntensities$ActivityHour,format="%m/%d/%Y %I:%M:%S %p")

str(hourlyIntensities)

# Looking at completion of data

hourlyIntensities_validity<-hourlyIntensities%>%
  group_by(Id)%>%
  summarize(TotalIntensity_avg=mean(TotalIntensity))
View(hourlyIntensities_validity)