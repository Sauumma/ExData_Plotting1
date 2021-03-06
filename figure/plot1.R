#data loading
datafile <-"C:/Users/saura/OneDrive/Desktop/Project/Exploratory-Data-Analysis---Week-1/household_power_consumption.txt"
household <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsethousehold <- household[household$Date %in% c("1/2/2007","2/2/2007"),]

#plotgeneration
globalActivePower <-as.numeric(subsethousehold$Global_active_power)
png("plot1.png",width = 480, height = 480)
hist(globalActivePower,col = "red",main = "Global Active Power", xlab = "Global Active Power(kilowatts)")
dev.off()