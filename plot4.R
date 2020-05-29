par(mfrow=c(2,2))

with(result,{
  plot(Global_active_power~dateTime,
                  xlab="",ylab="Global active power (kilowatts)",type="l")
  plot(Voltage~dateTime,
       xlab="",ylab="Voltage (Volt)",type="l")
  plot(Sub_metering_1~dateTime,xlab="",ylab="Global active power (kilowatts)",type="l")
  lines(Sub_metering_2~dateTime,col="red")
  lines(Sub_metering_3~dateTime,col="blue")
  legend("topright",col=c("black","red","blue"),lwd=c(1,1,1),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  plot(Global_reactive_power~dateTime,
       xlab="",ylab="Global Reactive Power(kilowatts)",type="l")
  })


dev.copy(png,"Exploratory Analysis Assignment/plot4.png")
dev.off()