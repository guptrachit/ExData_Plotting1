getwd()
setwd("C:/Users/RachitGupta/Desktop/DATA SCIENCE/Coursera/Data Specialization/exploratery/week1/exdata_data_household_power_consumption/")

dataFile <- "household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
###head(data,1)
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
###head(globalActivePower,1)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()