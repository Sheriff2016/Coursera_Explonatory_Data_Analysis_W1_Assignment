## Set the working directory
## Getting the desired dataset only
header <- read.table('household_power_consumption.txt', nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
data <- read.table("household_power_consumption.txt", header=T,sep = ";", skip = 66637, nrows = 2880)
colnames(data)<-unlist(header)

## Plot 2
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()