dat <- read.table('household_power_consumption.txt',header=TRUE,sep=';')

subset_dat <- subset(dat,Date == '1/2/2007' | Date == '2/2/2007')

subset_dat$merged_date <- as.POSIXct(strptime(paste(subset_dat$Date,subset_dat$Time,sep=' '), '%d/%m/%Y %H:%M:%S'))

par(mfrow = c(2,2))

plot(subset_dat$merged_date,subset_dat$Global_active_power,type='l',xlab = '',ylab = 'Global Active Power',lwd=2)

plot(subset_dat$merged_date,subset_dat$Voltage,type='l',lwd = 2,xlab='datetime',ylab='Voltage')

plot(subset_dat$merged_date,subset_dat$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(subset_dat$merged_date,subset_dat$Sub_metering_2,col='red')
lines(subset_dat$merged_date,subset_dat$Sub_metering_3,col = 'blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),bty='n',col=c('black','red','blue'),pch=c(150,150,150))

plot(subset_dat$merged_date,subset_dat$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',lwd=2,type='l')
