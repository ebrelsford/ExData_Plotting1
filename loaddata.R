# loaddata.R
#
# Load electric power consumption data in a consistent way to aid with making
# exploratory charts. Cells containing '?' are converted to NAs, only rows for
# February 1st and 2nd of 2007 are returned.

loadData <- function() {
    data <- read.csv('../household_power_consumption.txt', sep = ';',
                     na.strings = c('?'), stringsAsFactors = FALSE)
    data$Time = paste(data$Date, data$Time)
    data$Date = as.Date(data$Date, format = '%d/%m/%Y')
    data$Time = strptime(data$Time, format = '%d/%m/%Y %H:%M:%S')
    data[data$Date == '2007-02-01' | data$Date == '2007-02-02', ]
}
