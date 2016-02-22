plot2 <- function() {
  df <- prepare()
  x <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  png(file = "plot2.png", bg = "transparent")
  plot(x, df$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  dev.off()
}