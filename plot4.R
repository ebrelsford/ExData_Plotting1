# plot4.R
#
# Make four plots of the power consumption data.

plot4 <- function () {
    data <- loadData()
    png(filename = 'plot4.png')
    par(mfrow = c(2, 2))

    # Global active power
    plot(data$Time, data$Global_active_power, type = 'l', xlab = '',
         ylab = 'Global active power')

    # Voltage
    plot(data$Time, data$Voltage, type = 'l', xlab = 'datetime',
         ylab = 'Voltage')

    # Submetering
    plot(data$Time, data$Sub_metering_1, type = 'l', xlab = '',
         ylab = 'Energy sub metering')
    lines(data$Time, data$Sub_metering_2, col = 'red')
    lines(data$Time, data$Sub_metering_3, col = 'blue')
    legend('topright', c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
           lty = c(1, 1, 1), col = c('black', 'red', 'blue'))

    # Global active power
    plot(data$Time, data$Global_reactive_power, type = 'l', xlab = 'datetime',
         ylab = 'Global_reactive_power')
    dev.off()
}
