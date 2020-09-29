dat <- read.table('household_power_consumption.txt',header=TRUE,sep=';')

subset_dat <- subset(dat,Date == '1/2/2007' | Date == '2/2/2007')

hist(as.numeric(subset_dat$Global_active_power),main='Global Active Power',xlab = 'Global Active Power (kilowatts)',col = 'red')

dev.copy(png,'plot1.png')
dev.off()
