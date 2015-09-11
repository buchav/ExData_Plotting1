#read data from file to dataframe "df"
source("data_load.R")
par(mfcol=c(2,2),"cex"=0.6)

###########1
plot(df$Global_active_power,type = "l",axes=FALSE,lwd=1,xlab = "",ylab = "Global Active Power")
axis(1, at=c(1,nrow(df)/2.0,nrow(df)), lab=c("Thu","Fri","Sat"))
axis(2, las=1, cex.axis=0.8)
box()

###########2
plot(df$Sub_metering_1,type = "l",axes=FALSE,lwd=1,xlab = "",ylab = "Energy sub metering")
axis(1, at=c(1,nrow(df)/2.0,nrow(df)), lab=c("Thu","Fri","Sat"))
axis(2, las=1, cex.axis=0.8)
lines(df$Sub_metering_2,type="l",col=2)
lines(df$Sub_metering_3,type="l",col=4)
box()
legend("topright", names(df[7:9]), col=c(1,2,4), lwd=1,text.width=1400)

###########3
plot(df$Voltage,type = "l",axes=FALSE,lwd=1,xlab = "datetime",ylab = "Voltage")
axis(1, at=c(1,nrow(df)/2.0,nrow(df)), lab=c("Thu","Fri","Sat"))
axis(2)
box()

###########3
plot(df$Global_reactive_power,type = "l",axes=FALSE,lwd=1,xlab = "datetime",ylab = "Global_reactive_power")
axis(1, at=c(1,nrow(df)/2.0,nrow(df)), lab=c("Thu","Fri","Sat"))
axis(2)
box()

#save to file
dev.copy(png,'plot4.png')
dev.off()