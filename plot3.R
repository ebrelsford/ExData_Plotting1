# plot3.R
#
# Make a line chart of submetering 1, 2, and 3

source('loaddata.R')

plot3 <- function () {
    data <- loadData()
    png(filename = 'plot3.png')
    plot(data$Time, data$Sub_metering_1, type = 'l', xlab = '',
         ylab = 'Energy sub metering')
    lines(data$Time, data$Sub_metering_2, col = 'red')
    lines(data$Time, data$Sub_metering_3, col = 'blue')
    legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
           lty = c(1, 1, 1), col = c('black', 'red', 'blue'))
    dev.off()
}
