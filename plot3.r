setwd("~/Progetti_R/progetti_r_new/script_vecchi_tutorial/ProgrammingAssignment5")
if (!exists("house_power")) {source("Read_data.R")}

summary(house_power)

png("plot3.png", width=480, height=480)

plot(house_power$Date_Time,house_power$Sub_metering_1,type="l",
     xlab="",
     ylab="Energy sub metering")

lines(house_power$Date_Time,house_power$Sub_metering_2,col="red")
lines(house_power$Date_Time,house_power$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),lty=1)

dev.off()
