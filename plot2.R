# Plot2
# Set working directory (change this to fit your needs)
setwd('C:/Users/Edward')

# make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('loadData.R')

# open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()