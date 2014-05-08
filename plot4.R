#source("load_data.R")
png("plot4.png",height=480,width=480)
par(mfrow=c(2,2))
plot(consumption_subset$datetime,consumption_subset$Global_active_power,  type="l",xlab="",ylab="Global Active Power")

plot(consumption_subset$datetime,consumption_subset$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(consumption_subset$datetime,consumption_subset$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
points(consumption_subset$datetime,consumption_subset$Sub_metering_2,type="l",col="red")
points(consumption_subset$datetime,consumption_subset$Sub_metering_3,type="l",col="blue")
legend("topright",names(consumption_subset)[7:9],col=c("black","red","blue"),lwd=1)


plot(consumption_subset$datetime,consumption_subset$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()