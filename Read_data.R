rm(list = ls())
#dev.off()
shell("cls")

library(dplyr)

## SET working dir 
work_dir<-"~/Progetti_R/progetti_r_new/script_vecchi_tutorial/ProgrammingAssignment5"
if(!file.exists(work_dir)){dir.create(work_dir)}
setwd("~/Progetti_R/progetti_r_new/script_vecchi_tutorial/ProgrammingAssignment5")
if(!file.exists("data")){dir.create("data")}
setwd("./data")

## GET DATA

url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
file_name<-"household_power_consumption.zip"
file_name2<-"household_power_consumption.txt"
if(!file.exists(file_name)){download.file(url, destfile = file_name)}
list.files()
if(!file.exists(file_name2)){(unzip(file_name))}


## READ DATA as "character"

rm(url,work_dir,file_name)
shell("cls")

library(dplyr)
print("READING DATA")
house_power <- read.csv2(file_name2,header = TRUE,sep = ";",dec=".",stringsAsFactors = F)


## SET DATE TYPE and SUBSET

class(house_power$Date)
house_power$Date[1]
house_power$Date <- as.Date(house_power$Date, format="%d/%m/%Y")
class(house_power$Date)
tmp<-subset(house_power, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))


# SET variable to NUMERIC

for (i in 3:length(tmp)) {
        tmp[,i]<-as.numeric(tmp[,i])
}

# CREATE new variable merging DATE and TIME 

Date_Time <- paste(as.Date(tmp$Date), tmp$Time)
Date_Time <- strptime(Date_Time, "%Y-%m-%d %H:%M:%S") 
tmp<- data.frame(tmp,Date_Time)
class(tmp$Date_Time[100])
tmp$Date_Time[100]

house_power<-as_tibble(tmp)
rm(tmp)
setwd("..")