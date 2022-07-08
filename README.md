# Bellabeat_Case_Study_GAC
This is a case study from Google Analytics Certificate. Please read the case study file in order to gain understanding of a project.


## Main Question

Problem: How can we better target smart-device buyers through marketing, based on customer use of these devices?

## About Dataset

Data type: .csv
Storage:  Google Drive.
Examination Software: smaller data sets will be examined with Google Sheets, while bigger ones will be processed with "R" and "SQL". 

Data License: public data source ‘Kaggle’; CC0 Public Domain license. 
To review license type [click here](https://creativecommons.org/publicdomain/zero/1.0/)

Assumptions:

* There are no blank values in the data set as checked through the softwares listed above.

* Incomplete data sets are incomplete not due to missing values, but due to customers choosing not to track certain measurements: ‘Heartrate’,’Sleep’,’Weight’.

* Data is said to be from 30 people, but 33 unique Id’s are found, we will assume that this is due to updates made to the data.

### Change Log

Change Log can be accessed [here](https://github.com/AistePalsgaardMacys/Bellabeat_Case_Study_GAC/blob/main/Change%20Log%20Bellabeat.docx)


### Data Completion

#### daily_activity_cleaning -Excel Pivot Table-

All 33 Id’s registered.

#### heartrate_seconds_merged -R-

There are 14 Id’s registered from 33.

#### hourlyCalories_merged ( R )

There are 32 Id’s registered from 33.

#### hourlyIntensities_merged - R -

All 33 Id’s registered.

#### hourlySteps_merged - R -

All 33 Id’s registered.

#### sleepDay_merged - R -

There are 24 Id’s registered from  33.

#### weightLogInfo_merged - R -

There are 8 Id’s registered from 33.


## Initial Explorations

#### Heartrate

Only 14 customers chose to track their heartrate which is 42.4% of all the customers that have been using tracking devices in this study.

![use_of_heartrate_tracking](https://user-images.githubusercontent.com/105588939/178060395-079c679c-085d-4b1f-bbb2-f18fb4c58f67.png)

Only 7 of them used the tracking device properly, where you can see a pattern emerge in the hearbeat, while others skipped days in-between showing their result to be inconclusive.

Customers that tracked their heartrate through 2 month-period and saw patterns had these Id’s:

* 2022484408
* 4388161847
* 4558609924
* 5553957443
* 5577150313
* 6962181067
* 8877689391

Only 21.2% of all participants used the heartrate tracker appropriately.


#### Weight Log

Only 8 users (24.2%) logged their weight and BMI in the tracking device. 

![weight_tracking](https://user-images.githubusercontent.com/105588939/178060577-3c7bb317-2c0d-466e-8baa-e840f9ddb66b.png)

Only 2 out of 8 people tracked their weight consistently through 2 month-period. The two customer Id’s that did so are:

* 6962181067
* 8877689391

Other customers that tracked their weight couple of times are:

* 2873212765
* 4319703577
* 4558609924

However, since this is tracking weight, which does not fluctuate day by day or sometimes even month by month there might be no need to track it often.

![ManualReport_tracking](https://user-images.githubusercontent.com/105588939/178060741-67693103-acb6-4d25-91c0-48a4432b32f1.png)

There are more instances of manual reporting rather than tracker reporting. 

### Q1:
Does the tracker insert values less often?

### Q2:
Is this due to an issue with the tracker in the device?

![ManualReportvalues_tracking](https://user-images.githubusercontent.com/105588939/178060832-d4c21e00-3597-41f8-bc32-8313dbe781b6.png)

### Q1

Non-manual tracker seems to add less values, but the difference between number of values in manual and non-manual tracking doesn’t seem significant. The difference in reporting style is more likely due to 5 out of 8 customers choosing to use manual tracking.

### Q2

There is no way for us to test this, however this seems to be possible and should be investigated.

#### Sleep Tracking

24 customers (72.7%)were tracking their sleep regime. 

![sleepminutes](https://user-images.githubusercontent.com/105588939/178060954-d70c1775-2f9b-47ae-9482-7ba794e5483a.png)

12 of them (36.4%) seem to have tracked it thorougly and a patterns have emerged.

#### Tracking Calories

32 people (96.97%) out of 33 decided to track calories with smart devices.

![tracking_calories](https://user-images.githubusercontent.com/105588939/178061012-4e107795-cdf2-4e31-baf8-4816e23fedfb.png)

Nearly all of them tracked it with pattern emerging, meaning that they have done activites which burn calories on a regular basis.

## Analysis

#### 1st Hypothesis

Calories burned are impacted by number of Steps, Distance and Activity Level.

#### 2nd Hypothesis

People tend to lay in bed for up to an hour before falling asleep.

#### 3rd Hypothesis

Customers that track their Heartrate, Sleep and Weight tend to lose more calories than the average customer.

##### Hypothesis nr. 1

<img width="326" alt="caloriesvssteps" src="https://user-images.githubusercontent.com/105588939/178061471-6f721f74-4674-4272-a582-823dc90dc8b9.png">

Calories and Steps are highly correlated as the trendline is very steep. 

<img width="295" alt="caloriesvsdistance" src="https://user-images.githubusercontent.com/105588939/178061575-21190f73-5d6e-46fc-a553-3e1b64a3a1b2.png">

Calories and Distance are correlated even more than steps with calories as the trendline is even steeper.

![intensity vs  calories](https://user-images.githubusercontent.com/105588939/178061626-5b476d7f-a12e-469f-852f-75b9466ab183.png)

Intensity of the activity is correlated with loss of calories, the more you move the more calories you burn. Furthermore, inactivity of a person can have a negative impact on calorie burning, as the number of calories burnt declines resulting in a negative trendline and possible health risks.

##### Answer

Calories are something that customers tend to track with smart devices, therefore it’s important to look into how we can promote that aspect in our marketing strategy. Burning of calories is connected to activity intensity, the number of steps a person takes, and distance that one travels.

##### Hypothesis nr. 2

We should differentiate between ‘TotalTimeInBed’ and ‘TotalMinutesAsleep’. We will divide this difference by 2 as the ‘TotalTimeInBed’ column might include time spent in bed before and after falling asleep.

![timeinbed_vs_timeasleep](https://user-images.githubusercontent.com/105588939/178061706-b130612b-cdc6-4949-99c6-f7d94da44463.png)

Most people from our customer data set seem to lay in bed between ∈[0 , 50] minutes before falling asleep.

##### Answer

Knowing how much time you need in order to fall asleep can make your day easier to plan and therefore help you get the amount of sleep you truly need. People from our customer dataset tend to lay in bed between 0 to 50 minutes before falling asleep. They could try to utilize that time to become more tired before sleeping or to go to bed before they normally would in order to get exactly the amount of sleep they prefer.

##### Hypothesis nr. 3

There is only one customer (6962181067) that tracked all three aspects: Heartrate, Sleep and Weight.

His average burnt calories are:

<img width="300" alt="threetracker" src="https://user-images.githubusercontent.com/105588939/178061978-13444fb2-9350-4c19-882a-f9c1a283cbd1.png">

The average calories burnt per customer in this dataset is:

<img width="300" alt="averageothercalories" src="https://user-images.githubusercontent.com/105588939/178062044-1d86291f-5f15-4079-884c-afb0ed69fe58.png">

##### Answer

We can’t make conclusions based on only one customer that follows all three measures: heartrate, sleep and weight. However, if we would infer on these results we would reject this hypothesis as average calorie burn per customer is higher then the one of a all-tracking customer. Meaning that tracking several aspects would not make it likely that you will lose more calories than those who don’t follow them.


### Recommendations

#### Basis Of Recommendations

In the recommendations we make sure to keep in mind what ‘Bellabeat’ represents. It’s made by women for women, and focuses on tracking your wellness and making suggestions for improvements. The choice of device for improvements is: ‘Time’ - classic watch with smart-device functionality, perfect for a seemless look.

#### Recommendations

1. Focusing on wellness alarms should be a priority as 96.97% of customers choose to track their calories, and updates about steps taken, distance walked and activeness level per day should help them to achieve results within calorie loss.

2. Bellabeat should promote their effortless sleep tracking, data has shown that 72.7% of customers choose to track sleep, but only 36.4% can see a pattern of their sleep clearly. This indicates that people are interested in rhythm of their sleep, however tracking devices lack precision when tracking these patterns. If Bellabeat can perform this task better than competitiors it could grow to be a competitive advantage.

3. Promoting better understanding of customers’ daily patterns should be helpful as well, customers spend up to 50 minutes in bed before falling asleep, which consumes the time one assumes to spend sleeping. Exposing customers to this knowledge could interest them in understanding their habits even more.
