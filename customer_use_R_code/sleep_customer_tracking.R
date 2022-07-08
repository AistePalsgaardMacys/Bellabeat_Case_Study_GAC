View(sleep)

## How do customers track their sleep?

png("minutes_asleep.png",width=800,height=600)
ggplot(sleep, aes(x=SleepDay, y=TotalMinutesAsleep))+
  geom_line()+
  facet_wrap(~Id)+
  labs(title="Customers Tracking Of Sleep")
dev.off()

## Relationship between time-in-bed and minutes asleep.

sleep<- sleep%>%
  mutate(in_bed_before_sleep=(TotalTimeInBed-TotalMinutesAsleep)/2)

png("timeinbed_sleep.png",width=800,height=600)
ggplot(sleep, aes(x=TotalMinutesAsleep, y=in_bed_before_sleep))+
  geom_jitter()+
  labs(title="Minutes Asleep Vs. Time In Bed",subtitle = "In Minutes",y="Time In Bed",x="Time Asleep")
dev.off()