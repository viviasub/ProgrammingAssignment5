setwd("~/Progetti_R/progetti_r_new/script_vecchi_tutorial/ProgrammingAssignment5")
if (!exists("house_power")) {source("Read_data.R")}

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2), oma=c(0,5,0,0))

#first plot
     plot(house_power$Date_Time, house_power$Global_active_power,
        type="l",xlab="",ylab="Global Active Power (kilowatts)")
     
#second plot
     plot(house_power$Date_Time, house_power$Voltage,
        type="l",xlab="",ylab="Voltage")
     
#third plot  
     plot(house_power$Date_Time,house_power$Sub_metering_1,
          type="l",xlab="", ylab="Energy sub metering")
     
          lines(house_power$Date_Time,house_power$Sub_metering_2,col="red")
          lines(house_power$Date_Time,house_power$Sub_metering_3,col="blue")
          legend("topright", bty = "n", cex = 0.5,
                c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                col=c("black", "red", "blue"),lty=1)

#forth plot
     plot(house_power$Date_Time, house_power$Global_reactive_power, type="l",
          xlab="datetime", ylab="Global reactive power")
     
dev.off()


