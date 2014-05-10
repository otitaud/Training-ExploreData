rm(list=ls())
data<-read.table("data.txt",sep=";",header=TRUE,dec='.',stringsAsFactors=FALSE,na.strings="?")
myformat<-"%d/%m/%Y %H:%M:%S"

png(filename = "plot4.png", width = 480, height = 480, units = "px", pointsize = 12,    bg = "grey",  res = NA)
par(bg="grey",mfrow=c(2,2))

plot(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Global_active_power),type="l",
     main="",xlab="",ylab="Global Active Power (kilowatts)",,col=1)

plot(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Voltage),type="l",
     main="",xlab="datetime",ylab="Voltage",,col=1)

plot(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Sub_metering_1),type="l",
     main="",xlab="",ylab="Energy sub metering",,col="black")
lines(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Sub_metering_2),col="red")
lines(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Sub_metering_3),col="blue")
legend("topright",legend=names(data[7:9]),col=c("black","red","blue"),lty=rep(1))

plot(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Global_reactive_power),type="l",
     main="",xlab="datetime",ylab="Global_reactive_power",,col=1)

dev.off()