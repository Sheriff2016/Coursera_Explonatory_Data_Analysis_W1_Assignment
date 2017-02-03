## Set the working directory
## Getting the desired dataset only
header <- read.table('household_power_consumption.txt', nrows = 1, header = FALSE, sep =';', stringsAsFactors = FALSE)
data <- read.table("household_power_consumption.txt", header=T,sep = ";", skip = 66637, nrows = 2880)
colnames(data)<-unlist(header)

## Plot 1
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()