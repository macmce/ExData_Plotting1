source("getdata.R")


png("plot4.png", bg = "transparent", width = 480, height = 480)
par(mfrow = c(2, 2)) # create 2x2 device

plot(
  DateTime, as.numeric(rangeData$Global_active_power), type = "l", xlab =
    "", ylab = "Global Active Power", cex = 0.2
)

plot(
  DateTime, as.numeric(rangeData$Voltage), type = "l", xlab = "datetime", ylab =
    "Voltage"
)

plot(
  DateTime, as.numeric(rangeData$Sub_metering_1), type = "l", xlab = "", ylab = "Energy Submetering"
)

lines(DateTime, as.numeric(rangeData$Sub_metering_2), type = "l", col =
        "red")

lines(DateTime, as.numeric(rangeData$Sub_metering_3), type = "l", col =
        "blue")

legend(
  "topright", bg = "transparent", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  lwd = 2.5, col = c("black", "red", "blue"), bty = "o"
)

plot(
  DateTime, as.numeric(rangeData$Global_reactive_power), type = "l", xlab =
    "datetime", ylab = "Global_reactive_power"
)

dev.off()