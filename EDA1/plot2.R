## This is the Assignment for EDA Project1 plot2

# Step 1. check and set work directory
if(!file.exists("EDA project1"),
   dir.create("EDA project1"))
        setwd("EDA project1")

## Step 2. download and read data
URL="http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(URL, destfile="./exdata-data-household_power_consumption.zip")
unzip("exdata-data-household_power_consumption.zip", exdir="EDA project1")
EPC <- read.table("household_power_consumption.txt", 
                  sep=";", header=T, stringsAsFactors=F, na.strings="?",
                  colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
part <- EPC[EPC$Date=="1/2/2007"|EPC$Date=="2/2/2007",]

## Step 3. deal with Date and Time
DT <- with(part, paste(Date, Time, sep=" "))
part <- transform(part, DT = strptime(DT, "%d/%m/%Y %H:%M:%S", tz="UTC"))
Sys.setlocale("LC_TIME","english") ## be attentvie to the locale, or else the weekday may be printed in Chinese

## Step 4. plot and put out
png("plot2.png", width=480, height=480)
plot(part$DT, part$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()