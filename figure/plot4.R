plot4 <- function() {
  df <- prepare()
  png(filename = "plot4.png", bg = "transparent")
  par(mfrow = c(2,2), mar = c(4, 4, 2, 1))
  x <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  plot(x, df$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
  plot(x, df$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
  plot(x, df$Sub_metering_1, type = "l", ylab = "Energy Sub metering", xlab = "")
  lines(x, df$Sub_metering_2, col = "red", ylab = "Energy Sub metering", xlab = "")
  lines(x, df$Sub_metering_3, col = "blue", ylab = "Energy Sub metering", xlab = "")
  legend("topright",col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
  plot(x, df$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")
  dev.off()
}