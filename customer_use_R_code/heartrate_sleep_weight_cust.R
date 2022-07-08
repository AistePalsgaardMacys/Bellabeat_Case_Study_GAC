## Customers that tracked heartrate, weight and sleep.

Heartrate_cust<-c(2022484408, 4388161847, 4558609924, 5553957443, 5577150313, 6962181067, 8877689391)            

Weight_cust<- c(6962181067,8877689391,2873212765,4319703577,4558609924)

Sleep_cust<- c(1503960366,2026352035,4319703577,3977333714,4388161847,4445114986,4702921684,5553957443,
               5577150313,6962181067,7086361926,8378563200)

customers_track_two<-intersect(Sleep_cust,Heartrate_cust)

customers_track_three<-intersect(customers_track_two,Weight_cust)

customers_track_three