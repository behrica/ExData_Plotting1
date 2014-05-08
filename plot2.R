source("load_data.R")
png("plot2.png",height=480,width=480)
plot(consumption_subset$datetime,consumption_subset$Global_active_power,  type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()