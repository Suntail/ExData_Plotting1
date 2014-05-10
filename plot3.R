data <- read.table("household_power_consumption.txt", header = TRUE, sep  =";", skip = 66636, nrows = 2880)
names(data) <- c("Date", "Time", "GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3")
plot(data$SM1, main = "", xlab = "", xaxt = "n", ylab = "Energy sub metering", type = 'l')
lines(data$SM2, type = "l", col = "red")
lines(data$SM3, type = "l", col = "blue")
axis(1, at=c(0, 1441, 2880), labels=c("Tue","Fri", "Sat"))
legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.75)
dev.copy(png, file = "plot3.png")
dev.off()