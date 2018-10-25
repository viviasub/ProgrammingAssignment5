setwd("~/Progetti_R/progetti_r_new/script_vecchi_tutorial/ProgrammingAssignment5")
if (!exists("house_power")) {source("Read_data.R")}

# FIRST PLOT

png("plot1.png", width=480, height=480)

hist(house_power$Global_active_power,
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="Red")

dev.off()
