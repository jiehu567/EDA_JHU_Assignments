#Load data
file1 <- "/Users/hujie/Desktop/Data Science/4. Exploratory_Data_Analysis/w1ass/household_power_consumption.txt"
data1 <- read.table(file2, na.strings = "?", sep = ";", dec=".", header = T)

#Subset data, from the dates 2007-02-01 and 2007-02-02
sub_data2 <- subset(data1, as.Date(data1$Date,format = "%d/%m/%Y") == "2007-02-01" | as.Date(data1$Date,format = "%d/%m/%Y") == "2007-02-02")

#2nd Plot: Global Active Power, Save file
datetime <- strptime(paste(sub_data2$Date, sub_data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(datetime, sub_data2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()