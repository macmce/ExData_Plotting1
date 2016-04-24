source("getdata.R")

png(
  filename = "plot3.png", bg = "transparent", width = 480, height = 480, units = "px"
)

plot(
  DateTime, Sub_metering_1,type = "l", col = "black",xlab = "", ylab = "Energy sub metering"
)

lines(DateTime, Sub_metering_2, col = "red")

lines(DateTime, Sub_metering_3, col = "blue")

legend(
  "topright", lwd=1, border = "black", bg = "transparent", col = c("black", "red", "blue"), 
  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
)

dev.off()
