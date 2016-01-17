#Load data
file1 <- "/Users/hujie/Desktop/Data Science/4. Exploratory_Data_Analysis/w1ass/household_power_consumption.txt"
data1 <- read.table(file1, na.strings = "?", sep = ";", dec=".", header = T)

#Subset data, from the dates 2007-02-01 and 2007-02-02
sub_data4 <- subset(data1, as.Date(data1$Date,format = "%d/%m/%Y") == "2007-02-01" | as.Date(data1$Date,format = "%d/%m/%Y") == "2007-02-02")

#2nd Plot: Global Active Power, Save file
datetime <- strptime(paste(sub_data4$Date, sub_data4$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)

par(mfrow = c(2, 2))
plot(datetime, sub_data4$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
plot(datetime, sub_data4$Voltage, xlab="Datetime", ylab="Voltage")
plot(datetime, sub_data4$Sub_metering_1, type="l", col = 'black', xlab="", ylab="Energy sub metering")
lines(datetime, sub_data4$Sub_metering_2, type="l", col = 'red')
lines(datetime, sub_data4$Sub_metering_3, type="l", col = 'blue')
plot(datetime, sub_data4$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()