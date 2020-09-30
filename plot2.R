dat <- read.table('household_power_consumption.txt',header=TRUE,sep=';')

subset_dat <- subset(dat,Date == '1/2/2007' | Date == '2/2/2007')

subset_dat$merged_date <- as.POSIXct(strptime(paste(subset_dat$Date,subset_dat$Time,sep=' '), '%d/%m/%Y %H:%M:%S'))

plot(subset_dat$merged_date,subset_dat$Global_active_power,type='l',xlab = '',ylab = 'Global Active Power (kilowatts)')

