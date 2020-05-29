with(result,{plot(Sub_metering_1~dateTime,xlab="",ylab="Global active power (kilowatts)",type="l")
                  lines(Sub_metering_2~dateTime,col="red")
                  lines(Sub_metering_3~dateTime,col="blue")
                  })
legend("topright",col=c("black","red","blue"),lwd=c(1,1,1),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,"Exploratory Analysis Assignment/plot3.png")
dev.off()

