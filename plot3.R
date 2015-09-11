#read data from file to dataframe "df"
source("data_load.R")
par("cex"=0.8,par(mfcol=c(1,1),"cex"=0.6))
plot(df$Sub_metering_1,type = "l",axes=FALSE,lwd=1,xlab = "",ylab = "Energy sub metering")
axis(1, at=c(1,nrow(df)/2.0,nrow(df)), lab=c("Thu","Fri","Sat"))
axis(2, las=1, cex.axis=0.8)
lines(df$Sub_metering_2,type="l",col=2)
lines(df$Sub_metering_3,type="l",col=4)
box()
legend("topright", names(df[7:9]), col=c(1,2,4), lwd=1,text.width=800)

#save to file
dev.copy(png,'plot3.png')
dev.off()
