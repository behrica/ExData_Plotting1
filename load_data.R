consumption <- read.table(file="household_power_consumption.txt",header=T,sep=";",na.strings="?")
consumption$date_asdate <- as.Date(consumption$Date,format="%d/%m/%Y")
consumption_subset <- consumption[consumption$date_asdate == as.Date("2007-02-01") | consumption$date_asdate == as.Date("2007-02-02") ,]
consumption_subset$datetime <- strptime(paste(consumption_subset$Date,consumption_subset$Time),format="%d/%m/%Y %H:%M:%S")
