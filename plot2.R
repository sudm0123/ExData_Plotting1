### Code for Reading the Data[Start]
data<-read.table("household_power_consumption.txt",sep=";",head=TRUE)
x<-data[,1]
x<-strptime(x,"%d/%m/%Y")
y<-(x=="2007-02-01 IST" | x=="2007-02-02 IST")
z<-data[y,]
data<-z   
## Code for Reading the Data[End]

data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

## Code for chart/graph
with(data,plot(data$Date,as.numeric(as.character(data$Global_active_power)),
               xlab="",ylab="Global Active Power (kilowatts)",type="l"))
dev.copy(png,file = "plot2.png")
dev.off()