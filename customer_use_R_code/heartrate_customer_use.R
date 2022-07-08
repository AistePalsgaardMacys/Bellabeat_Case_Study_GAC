install.packages("tidyverse")
library(tidyverse)

heartrate<-read_csv("SQL_hourly_dist.csv")

View(heartrate)

## Renaming wrongly named column 

heartrate<-rename(heartrate,heartbeat_avg = hearbeat_Avg)

## Visualizing Average heartbeat through the day

png("use_of_heartrate_tracking.png",width = 800, height = 600)
ggplot(heartrate,aes(x=Time_Hour,y=heartbeat_avg))+
  geom_line()+
  facet_wrap(~Id)+
  labs(title="Heartrate Tracking Pattern",x="")
dev.off()
