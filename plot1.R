#Load data
file1 <- "/Users/hujie/Desktop/Data Science/4. Exploratory_Data_Analysis/w1ass/household_power_consumption.txt"
data1 <- read.table(file1, na.strings = "?", sep = ";", dec=".", header = T)

#Subset data, from the dates 2007-02-01 and 2007-02-02
sub_data1 <- subset(data1, as.Date(data1$Date,format = "%d/%m/%Y") == "2007-02-01" | as.Date(data1$Date,format = "%d/%m/%Y") == "2007-02-02")

#1st Plot: Global Active Power, Save file
hist(sub_data1$Global_active_power, col='red', xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

png("plot1.png", width=480, height=480)
hist(sub_data1$Global_active_power, col='red', xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
