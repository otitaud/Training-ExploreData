rm(list=ls())
par(bg="grey")
data<-read.table("data.txt",sep=";",header=TRUE,dec='.',stringsAsFactors=FALSE,na.strings="?")
myformat<-"%d/%m/%Y %H:%M:%S"

png(filename = "plot3.png", width = 480, height = 480, units = "px", pointsize = 12,    bg = "grey",  res = NA)
plot(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Sub_metering_1),type="l",
     main="",xlab="",ylab="Energy sub metering",,col="black")
lines(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Sub_metering_2),col="red")
lines(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Sub_metering_3),col="blue")
legend("topright",legend=names(data[7:9]),col=c("black","red","blue"),lty=rep(1))
dev.off()