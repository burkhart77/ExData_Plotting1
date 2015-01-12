## Plot4.R
## 4 plots one png file
## Global active power/Voltage/Energy sub metering/Global re-active power

## Get Data from 1/2/2007 to 2/2/2007

hpcfile <- "household_power_consumption.txt"
hpcAll <- read.csv(file = hpcfile, header=TRUE, sep = ";", na.strings="?", comment.char="")
