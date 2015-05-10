# This file creates plot2.png
# First make sure we are in the right directory
if(!"load_data.R" %in% list.files()){
        setwd("C:/Users/Lukas/Dropbox/Data Science/Exploratory Data Analysis/ExData_Plotting1")
}
# Source the load_data.R file that imports and formats the data we are using for the plots
source("load_data.R")
# Create the plot
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2,2))
# Plot on the top-left
plot(selectedData$dateTime, selectedData$Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")
# Plot on the top-right
plot(selectedData$dateTime, selectedData$Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
# Plot on the bottom-left
plot(selectedData$dateTime, selectedData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(selectedData$dateTime, selectedData$Sub_metering_2, col = "red")
lines(selectedData$dateTime, selectedData$Sub_metering_3, col = "blue")
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
# Plot on the bottom-right
plot(selectedData$dateTime, selectedData$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(selectedData)[4])
dev.off()