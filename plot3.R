# This file creates plot2.png
# First make sure we are in the right directory
if(!"load_data.R" %in% list.files()){
        setwd("C:/Users/Lukas/Dropbox/Data Science/Exploratory Data Analysis/ExData_Plotting1")
}
# Source the load_data.R file that imports and formats the data we are using for the plots
source("load_data.R")
# Create the plot
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
# First the plot of Sub_metering_1 is created
plot(selectedData$dateTime, selectedData$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
# Next the lines of Sub_metering 2 & 3 are added
lines(selectedData$dateTime, selectedData$Sub_metering_2, col = "red")
lines(selectedData$dateTime, selectedData$Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()