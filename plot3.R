data<-read.table("household_power_consumption.txt",sep=";",head=TRUE)   ## Code for Reading the Data[Start]
x<-data[,1]
x<-strptime(x,"%d/%m/%Y")
y<-(x=="2007-02-01 IST" | x=="2007-02-02 IST")
z<-data[Y,]
data<-z   ## Code for Reading the Data[End]
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
## Code for chart/graph
with(data,plot(data$Date,as.character(data$Sub_metering_1),xlab="",ylab="Energy sub metering",type="l"))
lines(data$Date,as.character(data$Sub_metering_2),col="red")
lines(data$Date,as.character(data$Sub_metering_3),col="blue")
legend("topright",lty="solid",text.width=65000,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))