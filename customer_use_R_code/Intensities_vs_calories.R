daily_activity<-read_csv("daily_activity_cleaning.csv")

##plot intensities by calories

Very<-ggplot(daily_activity,aes(x=VeryActiveMinutes,y=Calories))+
  geom_jitter(colour='#dda0dd')+
  geom_smooth(method=lm, se=FALSE, col='black',size=1)+
  labs(title='Relationship Between Calories & Very Active Minutes',x='Very Active Minutes')

Fairly<-ggplot(daily_activity,aes(x=FairlyActiveMinutes,y=Calories))+
  geom_jitter(colour='#99bd71')+
  geom_smooth(method=lm, se=FALSE, col='black',size=1)+
  labs(title='Relationship Between Calories & Fairly Active Minutes',x='Fairly Active Minutes')

Lightly<-ggplot(daily_activity,aes(x=LightlyActiveMinutes,y=Calories))+
  geom_jitter(colour='#e5ca57')+
  geom_smooth(method=lm, se=FALSE, col='black',size=1)+
  labs(title='Relationship Between Calories & Lightly Active Minutes',x='Lightly Active Minutes')


Sedentary<- ggplot(daily_activity,aes(x=SedentaryMinutes,y=Calories))+
  geom_jitter(colour='#de7171')+
  geom_smooth(method=lm, se=FALSE, col='black',size=1)+
  labs(title='Relationship Between Calories & Inactive Minutes',x='Inactive Minutes')

### Combine plots

install.packages('gridExtra')
library(gridExtra)

compare<-grid.arrange(Very,Fairly,Lightly,Sedentary)

png('Intensitiesvscalories.png',width = 1040,height=600)
grid.arrange(Very,Fairly,Lightly,Sedentary)
dev.off()

compare
