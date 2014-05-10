# Read data
data <- read.table("household_power_consumption.txt", header = TRUE, sep  =";", skip = 66636, nrows = 2880)
names(data) <- c("Date", "Time", "GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3")
# Create plot
plot(data$GAP, main = "", xlab = "", xaxt = "n", ylab = "Global Active Power (kilowatts)", type = 'l')
# Change x axis labels
axis(1, at=c(0, 1441, 2880), labels=c("Tue","Fri", "Sat"))
# Save plot as png file
dev.copy(png, file = "plot2.png")
dev.off()
