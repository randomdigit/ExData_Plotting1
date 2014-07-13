power <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
power$Date <- as.Date(power$Date, format="%d/%m/%Y")

pow <- subset(power, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(power)

datetime <- paste(as.Date(pow$Date), pow$Time)
pow$Datetime <- as.POSIXct(datetime)

