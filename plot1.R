data <- read.table("household_power_consumption.txt", header = TRUE, sep  =";", skip = 66636, nrows = 2880)
names(data) <- c("Date", "Time", "GAP", "GRP", "Voltage", "GI", "SM1", "SM2", "SM3")
hist(data$GAP, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.copy(png, file = "plot1.png")
dev.off()