prepare <- function() {
  conn <- file("household_power_consumption.txt", "r")
  df <- sqldf("select * from conn where Date in ('1/2/2007', '2/2/2007')", file.format = list(header = TRUE, sep = ";"))
  close(conn)
  df[df == "?"] = NA
  df
}