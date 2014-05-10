# Read data
data <- read.table("household_power_consumption.txt", header = TRUE, sep  =";", skip = 66636, nrows = 2880)
# "GAP" = Global_active_power; "GRP" = Global_reactive_power; "GI" = Global_intensity; "SM1-3" = Sub_metering_1-3
names(data) <- c("Date", "Time", "GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3")
# Create histograme
hist(data$GAP, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
# Save histogram as png file
dev.copy(png, file = "plot1.png")
dev.off()
