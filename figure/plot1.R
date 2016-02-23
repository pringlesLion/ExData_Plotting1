plot1 <- function() {
  df <- prepare()
  png(filename = "plot1.png", bg = "transparent")
  hist(df$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
  dev.off()
}