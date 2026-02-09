df <- kosu5k
names(df)
names(df) <- c("date", "moving_time", "avg_pace")
df
#time of first time(minute)
first_time <- df$moving_time[1]
#difference according to firs time
df$difference <- df$moving_time - firts_time
#percentage change according to first time
df$percentage_change <- (df$moving_time - first_time) / first_time*100
df
last <- nrow(df)
cat("Firts running time:", round(df$moving_time[1], 2),"min/n")
cat("Last running time :", round(df$moving_time[5],2), "min/n")
cat("Total difference :",round(df$difference[5], 2), "min/n")
cat("Percentage change :", round(df$percentage_change[5],2), "%/n")
df$running_no <- seq_len(nrow(df))
df
#Pace Difference
first_pace <- df$avg_pace[1]
df$pacedifference <- df$avg_pace - first_pace
df$percentage_change_pace <- (df$avg_pace - first_pace) / first_pace * 100
cat("First running avarage pace:", round(df$avg_pace[1], 2), "min/Km")
cat("Last running avarage pace:", round(df$avg_pace[last], 2), "min/Km")
cat("Total pace difference:", round(df$pacedifference[last], 2), "min/Km")
cat("Percentage pace change:", round(df$percentage_change_pace[last], 2), "%/km")
#VO2MAX Difference
first_vo2max <- df$vo2max[1]
df$vo2max_difference <- df$vo2max - first_vo2max
df$percentagevo2change <- (df$vo2max - first_vo2max) / first_vo2max * 100
cat("First VO2MAX:", round(df$vo2max[1], 2), "ml/kg/min")
cat("Last VO2MAX:", round(df$vo2max[last], 2), "ml/kg/min")
cat("Total VO2MAX difference", round(df$vo2max_difference[last], 2), "ml/kg/min")
cat("Percentage VO2MAX change:", round(df$percentagevo2change[last], 2), "ml/kg/min%")
#linear regression
model_time <- lm(moving_time ~ running_no, data = df)
summary(model_time)

model_pace <- lm(avg_pace ~ running_no, data = df)
summary(model_pace)
# Time vs Date
plot(df$date, df$moving_time,
     type = "b",
     xlab = "Date",
     ylab = "5K moving time(min)",
     main = "5K time according to number of running")

abline(model_time, lwd =2)

