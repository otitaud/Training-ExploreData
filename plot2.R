rm(list=ls())
par(bg="grey")
data<-read.table("../data.txt",sep=";",header=TRUE,dec='.',stringsAsFactors=FALSE,na.strings="?")
myformat<-"%d/%m/%Y %H:%M:%S"

png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12,    bg = "grey",  res = NA)
plot(strptime(paste(data$Date,data$Time),format=myformat),as.double(data$Global_active_power),type="l",
     main="",xlab="",ylab="Global Active Power (kilowatts)",,col=1)
dev.off()