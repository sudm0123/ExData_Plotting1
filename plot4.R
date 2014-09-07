## Code for Reading the Data[Start]
data<-read.table("household_power_consumption.txt",sep=";",head=TRUE)
x<-data[,1]
x<-strptime(x,"%d/%m/%Y")
y<-(x=="2007-02-01 IST" | x=="2007-02-02 IST")
z<-data[y,]
data<-z   
## Code for Reading the Data[End] 

data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

## Code for chart/graph
par(mfrow = c(2,2),mar=c(4,4,2,1))
with(data,{
	plot(data$Date,as.numeric(as.character(data$Global_active_power)),
             xlab="",ylab="Global Active Power",type="l")
	plot(data$Date,as.character(data$Voltage),xlab="datetime",
             ylab="Voltage",type="l")
	plot(data$Date,as.character(data$Sub_metering_1),xlab="",
             ylab="Energy sub metering",type="l")
	lines(data$Date,as.character(data$Sub_metering_2),col="red")
	lines(data$Date,as.character(data$Sub_metering_3),col="blue")
	legend("topright",lty="solid",text.width=95000,bty="n",
               col=c("black","red","blue"),
               legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	plot(data$Date,as.character(data$Global_reactive_power),
             xlab="datetime",ylab="Global_reactive_power",type="l")
})
dev.copy(png,file = "plot4.png")
dev.off()