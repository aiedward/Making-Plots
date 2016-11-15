# Plot1
# Set working directory (change this to fit your needs)
setwd('C:/Users/Edward')

# Make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('loadData.R')

# open device
png(filename='plot1.png',width=480,height=480,units='px')

# plot data
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()