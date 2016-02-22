plot1 <- function() {
  conn <- file("household_power_consumption.txt", "r")
  df <- sqldf("select * from conn where Date in ('1/2/2007', '2/2/2007')", file.format = list(header = TRUE, sep = ";"))
  close(conn)
  df[df == "?"] = NA
  my_df <- tbl_df(df)
  mutate(my_df, Date = as.Date(Date, "%d/%m/%Y"))
  hist(my_df$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
}