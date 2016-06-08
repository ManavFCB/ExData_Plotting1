data<-read.table("C:/Users/Manav Srinivasan/Desktop/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
datasub<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
datasub$Global_active_power<-as.numeric(datasub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(datasub$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
