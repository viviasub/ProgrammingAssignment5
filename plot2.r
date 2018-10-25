setwd("~/Progetti_R/progetti_r_new/script_vecchi_tutorial/ProgrammingAssignment5")
if (!exists("house_power")) {source("Read_data.R")}


# SECOND PLOT

png("plot2.png", width=480, height=480)

plot(house_power$Date_Time, house_power$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()
