## Plot1.R - Global Active Power vs Frequency
## Scale 0-1200 Freq, 0-6 kilowatts

## Libraries to Inlcude, SQL DataFrames and Data Sets
library(sqldf)
library(datasets)
library(dplyr)


## Get Data from 1/2/2007 to 2/2/2007

hpcfile <- "household_power_consumption.txt"
hpcAll <- read.csv(file = hpcfile, header=TRUE, sep = ";", na.strings="?", comment.char="")
#query <- "SELECT * from file WHERE DATE = '1/2/2007' or Date = '2/2/2007"
#hpcSubset <- read.csv2.sql(hpcfile, query, header=TRUE, sep=";", na.strings=c("?"))

# Change Date and subset on dates
hpcAll$Date <- as.Date(hpcAll$Date, factor="%d/%m/%y")
hpcSubset <- subset(hpcAll, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Plot1 - 
hist(hpcSubset$Global_active_power, main="Global Active Power", xlab="GAP (kilowatts)", ylab="Frequency")

## export
dev.copy(png, file="plot1.png")


