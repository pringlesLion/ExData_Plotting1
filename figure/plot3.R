plot3 <- function() {
  df <- prepare()
  x <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  png(file = "plot3.png", bg = "transparent")
  plot(x, df$Sub_metering_1, type = "l", ylab = "Energy Sub metering", xlab = "")
  lines(x, df$Sub_metering_2, col = "red", ylab = "Energy Sub metering", xlab = "")
  lines(x, df$Sub_metering_3, col = "blue", ylab = "Energy Sub metering", xlab = "")
  legend("topright",col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
  dev.off()
}
