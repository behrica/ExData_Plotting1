source("load_data.R")
png("plot1.png",height=480,width=480)
hist(consumption_subset$Global_active_power,xlab="Global Active Power (kilowatts)",col="red")
dev.off()