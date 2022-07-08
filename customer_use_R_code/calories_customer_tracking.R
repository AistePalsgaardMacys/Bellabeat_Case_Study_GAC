## How do customers track calories?

png("tracking_Cal.png",width=1300,height = 800)
ggplot(cal,aes(x=ActivityHour,y=Calories))+
  geom_line()+
  facet_wrap(~Id)
dev.off()