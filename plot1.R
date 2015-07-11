# plot1.R
#
# Make a histogram of electric power consumption, save it to plot1.png.

source('loaddata.R')

plot1 <- function () {
    data <- loadData()
    png(filename = 'plot1.png')
    hist(data$Global_active_power, breaks = 12, col = 'red',
         main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
    dev.off()
}
