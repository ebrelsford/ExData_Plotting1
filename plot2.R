# plot2.R
#
# Make a line chart of global active power over time

source('loaddata.R')

plot2 <- function () {
    data <- loadData()
    png(filename = 'plot2.png')
    plot(data$Time, data$Global_active_power, type = 'l', xlab = '',
         ylab = 'Global active power')
    dev.off()
}
