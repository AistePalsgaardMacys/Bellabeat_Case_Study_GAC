
# Importing and previewing data set.
cal<- read_csv("hourlyCalories_merged.csv")

str(cal)

# Change 'ActivityHour' from char to POIXct

Sys.setlocale(category = "LC_ALL", locale = "")
cal$ActivityHour <-as.POSIXct(cal$ActivityHour,format="%m/%d/%Y %I:%M:%S %p")

View(cal)

# Checking completion of data

h_cal_total_obs <- cal%>%
  group_by(Id)%>%
  summarize(mean_calories=mean(Calories))

view(h_cal_total_obs)

