# Read data 
data <- read.table("household_power_consumption.txt", header = TRUE, sep  =";", skip = 66636, nrows = 2880)
names(data) <- c("Date", "Time", "GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3")
# Create space for four plots
par(mfrow = c(2, 2))
#Create upleft plot
plot(data$GAP, main = "", xlab = "", xaxt = "n", ylab = "Global Active Power (kilowatts)", type = 'l')
axis(1, at=c(0, 1441, 2880), labels=c("Tue","Fri", "Sat"))
#Create upright plot
plot(data$Voltage, main = "", xlab = "datetime", xaxt = "n", ylab = "Voltage", type = 'l')
axis(1, at=c(0, 1441, 2880), labels=c("Tue","Fri", "Sat"))
#Create downleft plot
plot(data$SM1, main = "", xlab = "", xaxt = "n", ylab = "Energy sub metering", type = 'l')
lines(data$SM2, type = "l", col = "red")
lines(data$SM3, type = "l", col = "blue")
axis(1, at=c(0, 1441, 2880), labels=c("Tue","Fri", "Sat"))
legend(1100, 40, lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.8, bty="n")
#Create downright plot
plot(data$GRP, main = "", xlab = "datetime", xaxt = "n", yaxt = "n", ylab = "Global_reactive_power", type = 'l')
axis(1, at=c(0, 1441, 2880), labels=c("Tue","Fri", "Sat"))
axis(2, at=c(0, 0.1, 0.2, 0.3, 0.4, 0.5), labels=c("0.0","0.1", "0.2", "0.3", "0.4", "0.5"))
#Copy plots from screen grafic device to png file
dev.copy(png, file = "plot4.png")
dev.off()

