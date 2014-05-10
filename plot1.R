rm(list=ls())
par(bg="grey")
data<-read.table("../data.txt",sep=";",header=TRUE,dec='.',stringsAsFactors=FALSE,na.strings="?")
png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "grey",  res = NA)
hist(as.numeric(data$Global_active_power),xlab="Global Active Power (kilowatts)",main="Global Active Power",nclass=12,col=2)
dev.off()