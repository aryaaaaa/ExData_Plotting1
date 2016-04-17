setwd("/Users/aryaviswanathan/Desktop/Data Science Specialization/Course 4 - Exploratory Data Analysis/Week 1")

all_data <- read.csv("household_power_consumption.txt",header=TRUE,sep=';',na.strings="?")
all_data$Date <- as.Date(all_data$Date,format="%d/%m/%Y")
data <- subset(x=all_data,subset=(Date>="2007-02-01" & Date<="2007-02-02"))
png(filename="plot1.png",width=480,height=480)
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)", 
     ylab="Frequency")
dev.off()