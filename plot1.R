#read data from file to dataframe "df"
source("data_load.R")

par("cex"=0.8,par(mfcol=c(1,1)))
hist(df$Global_active_power,main ="Global Active Power",xlab = "Global Active Power (kilowatts)",col=2)

#save to file
dev.copy(png,'plot1.png')
dev.off()
