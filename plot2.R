#read data from file to dataframe "df"
source("data_load.R")
par("cex"=0.8,par(mfcol=c(1,1)))
plot(df$Global_active_power,type = "l",axes=FALSE,lwd=1,xlab = "",ylab = "Global Active Power (kilowatts)")
axis(1, at=c(1,nrow(df)/2.0,nrow(df)), lab=c("Thu","Fri","Sat"))
axis(2, las=1, cex.axis=0.8)
box()

#save to file
dev.copy(png,'plot2.png')
dev.off()