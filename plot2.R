# This file creates plot2.png
# First make sure we are in the right directory
if(!"load_data.R" %in% list.files()){
        setwd("C:/Users/Lukas/Dropbox/Data Science/Exploratory Data Analysis/ExData_Plotting1")
}
# Source the load_data.R file that imports and formats the data we are using for the plots
source("load_data.R")
# Create the plot
png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
plot(selectedData$dateTime, selectedData$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()