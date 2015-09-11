#read data from file
.colCl<-c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
df<-read.csv("household_power_consumption.txt",sep=";",na.strings ="?",colClasses =.colCl,skip=66636,nrows = 2880)
names(df)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#convert Date and Time colunms to POSIXlt, remove Time column
df$Date<-strptime(paste(df$Date,df$Time),"%m/%d/%Y %H:%M:%S")
df<-df[,-2] 

