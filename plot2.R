## Plot2.R Global Active Power vs Days
## Scale 0-6 Kilowatts vs Days Thursday and Friday

## Get Data from 1/2/2007 to 2/2/2007

hpcfile <- "household_power_consumption.txt"
hpcAll <- read.csv(file = hpcfile, header=TRUE, sep = ";", na.strings="?", comment.char="")
