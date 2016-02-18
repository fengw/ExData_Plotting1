
# read data 
setwd('/Users/fengw/study/datasciencecoursera/ExploratoryDataAnalysis/course1Project')

infile <- "household_power_consumption.txt"
zipfile <- "household_power_consumption.zip"
if (!file.exists(infile)) { 
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url,zipfile,method='curl') 
  unzip(zipfile) 
}

data = read.table(infile,sep=';',header=T, na.strings="?")
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

startDate = as.Date("2007-02-01")
endDate = as.Date("2007-02-02")
data2 = data$Date
subset = data[dates2>=startDate&dates2<=endDate,]

