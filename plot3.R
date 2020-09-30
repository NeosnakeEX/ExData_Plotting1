dat <- read.table('household_power_consumption.txt',header=TRUE,sep=';')

subset_dat <- subset(dat,Date == '1/2/2007' | Date == '2/2/2007')

subset_dat$merged_date <- as.POSIXct(strptime(paste(subset_dat$Date,subset_dat$Time,sep=' '), '%d/%m/%Y %H:%M:%S'))

plot(subset_dat$merged_date,subset_dat$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
lines(subset_dat$merged_date,subset_dat$Sub_metering_2,col='red')
lines(subset_dat$merged_date,subset_dat$Sub_metering_3,col = 'blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),pch=c(150,150,150))

dev.copy(png,'plot3.png')