source("getdata.R")

globalActivePowerData <- as.numeric(rangeData$Global_active_power)

png(
  filename = "plot2.png", bg = "transparent", width = 480, height = 480, units = "px"
)

plot(
  DateTime, globalActivePowerData, type = "l", xlab = "",
  ylab = "Global Active Power (kilowatts)"
)

dev.off()
