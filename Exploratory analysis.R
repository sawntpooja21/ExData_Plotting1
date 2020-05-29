
df <- read.table("E:/POOJA/certificate/exploratoryanalysis/household_power_consumption.txt",
                 sep=";",na.strings = "?",
                 header = TRUE)

df$Date <- as.Date(df$Date, "%d/%m/%Y")
result <- subset(df,Date >= as.Date("2007-02-01") & Date<= as.Date("2007-02-02"))

#clean data
result <- result[complete.cases(result),]

dateTime <- paste(result$Date,result$Time)

dateTime <- setNames(dateTime,"DateTime")

result <- result[ ,!(names(result) %in% c("Date","Time"))]

result <- cbind(dateTime, result)

result$dateTime <- as.POSIXct(dateTime)

