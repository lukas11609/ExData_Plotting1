# This file creates plot1.png
# First make sure we are in the right directory
if(!"load_data.R" %in% list.files()){
        setwd("C:/Users/Lukas/Dropbox/Data Science/Exploratory Data Analysis/ExData_Plotting1")
}
# Source the load_data.R file that imports and formats the data we are using for the plots
source("load_data.R")
# Create the plot
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(selectedData$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()