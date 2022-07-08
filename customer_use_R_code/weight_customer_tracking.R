## Uploading SQL organized dataset

weight_log<- read_csv("weight_log_org.csv")


View(weight_log)

## Visualizing

# Which customers use weight tacking?

png("weight_tracking.png",width=800,height=600)
ggplot(weight_log,aes(x=Dates, y=WeightKg))+
  geom_point()+
  facet_wrap(~Id)+
  labs(title="Weight Tracking Of Customers",x=" ")
dev.off()

# How many people use Manual Reporting?

png("ManualReport_tracking.png",width=800,height=600)
ggplot(weight_log,aes(x=IsManualReport))+
  geom_bar()+
  labs(title="Use Of Manual Reporting")
dev.off()
