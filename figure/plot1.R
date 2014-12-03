## Code for Reading the Data[Start]
data<-read.table("household_power_consumption.txt",sep=";",head=TRUE)
x<-data[,1]
x<-strptime(x,"%d/%m/%Y")
y<-(x=="2007-02-01 IST" | x=="2007-02-02 IST")
z<-data[y,]
data<-z   
## Code for Reading the Data[End]

## Code for Histogram
hist(as.numeric(as.character(data$Global_active_power)),col="red",
     main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,file = "plot1.png")
dev.off()