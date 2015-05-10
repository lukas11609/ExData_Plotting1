# This file is for loading and cleaning the data
# Get & set directory
getwd()
setwd("C:/Users/Lukas/Dropbox/Data Science/Exploratory Data Analysis/ExData_Plotting1")
# Check for directory "data" & create it if it doesn't exist
if(!file.exists("data")){
        dir.create("data")
}
# Download the data and unzip it
if(!file.exists("./data/household_power_consumption.txt")){
        download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile="./data/temp.zip")
        unzip("./data/temp.zip",exdir="./data")
        unlink("./data/temp.zip")    
}
# Import the data
filename <- "./data/household_power_consumption.txt"
data <- read.table(filename, header=TRUE, sep=";",colClasses= c("character","character", rep("numeric", 7)), na.strings="?")
# Converting date & time (there is a columnn with the formatted dates added to the datafile)
dates <- c("1/2/2007","2/2/2007")
selectedData <- data[which(data$Date %in% dates),]
dateTime <- paste(selectedData$Date, selectedData$Time)
selectedData$dateTime <- strptime(dateTime, "%d/%m/%Y %H:%M:%S")
#Delete original dataframe & temporary files that won't be used for plotting
rm(data,dates,filename,dateTime)
