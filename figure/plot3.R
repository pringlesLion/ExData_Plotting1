plot3 <- function() {
  df <- prepare()
  x <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  png(file = "plot3.png", bg = "transparent")
  plot(x, mydf$Sub_metering_1, type = "n", ylab = "Energy Sub metering", xlab = "")
  lines(x, mydf$Sub_metering_1, ylab = "Energy Sub metering", xlab = "")
  lines(x, mydf$Sub_metering_2, col = "red", ylab = "Energy Sub metering", xlab = "")
  lines(x, mydf$Sub_metering_3, col = "blue", ylab = "Energy Sub metering", xlab = "")
  dev.off()
}