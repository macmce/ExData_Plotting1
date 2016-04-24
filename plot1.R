source("getdata.R")

globalActivePowerData <- as.numeric(rangeData$Global_active_power)

png(
  filename = "plot1.png", bg = "transparent", width = 480, height = 480, units = "px"
)

hist(
  globalActivePowerData, col = "red", main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",breaks = 12, ylim = c(0, 1200)
)

dev.off()
