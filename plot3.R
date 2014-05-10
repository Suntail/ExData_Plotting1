# Read data
data <- read.table("household_power_consumption.txt", header = TRUE, sep  =";", skip = 66636, nrows = 2880)
names(data) <- c("Date", "Time", "GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3")
# Create plot from Sub_metering_1
plot(data$SM1, main = "", xlab = "", xaxt = "n", ylab = "Energy sub metering", type = 'l')
# Add line with Sub_metering_2
lines(data$SM2, type = "l", col = "red")
# Add line with Sub_metering_3
lines(data$SM3, type = "l", col = "blue")
# Change x axis labels
axis(1, at=c(0, 1441, 2880), labels=c("Tue","Fri", "Sat"))
# Add legend
legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.75)
# Save plot as png file
dev.copy(png, file = "plot3.png")
dev.off()
