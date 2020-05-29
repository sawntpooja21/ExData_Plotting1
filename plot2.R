plot(result$Global_active_power~result$dateTime,xlab="",ylab="Global active power (kilowatts)",type="l")
dev.copy(png,"Exploratory Analysis Assignment/plot2.png")
dev.off()