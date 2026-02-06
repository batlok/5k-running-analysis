# 5K Running Performance Analysis in R

This mini project analyzes my 5K running performance using R.  
I use real data from my training  (date, 5K moving time and average pace) and do a simple trend and progress analysis.

## Dataset

File: `data/kosu5k.xlsx`

Columns:
- `DATE` – date of the 5K run
- `MOVING TIME` – total 5K time in minutes
- `AVG. PACE` – average pace (min/km)

The data is a small sample (n = 5) from my own runs, sorted by date.

## Goals

- First vs last run comparison:
  - Calculate the time difference and percentage improvement relative to the first 5K.
- Simple trend analysis:
  - Fit a linear regression model  
    `moving_time ~ running_no`  
    to see whether running time tends to decrease as the run number increases.
- Basic visualization:
  - Plot 5K time over date and over run index.
  - Add the regression line on the time vs run plot.
 
- ## Future work

As I continue training and collect more runs, I plan to extend this project from a small descriptive analysis (n = 5) to a predictive model.

The main idea is to build a regression model that can **predict the expected time of my next 5K run** based on my recent training history.

- total distance and duration in the last 7–21 days,
- average pace of recent tempo runs,
- heart rate (if available),


With a larger dataset (e.g. 15+ runs)


The goal is to turn this personal dataset into a small but real **running performance prediction project** in R.


