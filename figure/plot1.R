data<-read.table("household_power_consumption.txt",sep=";",head=TRUE)
x<-data[,1]
x<-strptime(x,"%d/%m/%Y")
y<-(x=="2007-02-01 IST" | x=="2007-02-02 IST")
z<-data[Y,]
data<-z
hist(as.numeric(as.character(data$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")