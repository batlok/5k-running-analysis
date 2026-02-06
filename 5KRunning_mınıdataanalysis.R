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