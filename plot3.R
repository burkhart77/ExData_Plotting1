## Plot3.R
## Energy sub metering, Thursday and Friday
## with legend

## Get Data from 1/2/2007 to 2/2/2007

hpcfile <- "household_power_consumption.txt"
hpcAll <- read.csv(file = hpcfile, header=TRUE, sep = ";", na.strings="?", comment.char="")
