library(ggplot2)

slim <- read.csv("slim_airplanes.csv")
slim <- slim[2:14]

#prueba <- slim[2:5]
destinos <- subset(slim,select = c("Month","FlightNum","OriginAirportID","DestAirportID","Distance","Cancelled"))
tiempos <- subset(slim,select = c("Month","FlightNum","CRSDepTime","CRSArrTime","DepDelay","ArrDelay","Distance","Cancelled"))
pairs(tiempos)
pairs(destinos)
cor(tiempos)
cov(tiempos)
cor(destinos)
cov(destinos)

#cor(tiempos, method = "kendall")
cor(slim)
summary(slim)

boxplot(slim)
boxplot(slim$Quarter)
title("Quarter")

boxplot(slim$Month)
title("Month")

boxplot(slim$FlightNum)
title("Flight Number")

boxplot(slim$OriginAirportID)
title("Origin Airport ID")

boxplot(slim$DestAirportID)
title("Destination Airport ID")

boxplot(slim$CRSDepTime)
title("CRS Departure Time",xlab="", ylab="HourMinute")

boxplot(slim$DepDelay)
title("Departure Delay",xlab="", ylab="Minutes Difference")

boxplot(slim$CRSArrTime)
title("CRS Arrival Time",xlab="", ylab="HourMinute")

boxplot(slim$ArrDelay)
title("Arrival Delay",xlab="", ylab="Minutes Difference")

boxplot(slim$Distance)
title("Distance",xlab="", ylab="Kilometers")

#boxplot(slim$CancellationCode)
#boxplot(slim$Cancelled)

qplot( y= ArrDelay,x = "Minutes Diference",data = subset(slim, !is.na(ArrDelay)), geom = 'boxplot')+coord_cartesian(ylim = c(-50, 50))
qplot( y= ArrDelay, x = "Minutes Diference",data = subset(slim, !is.na(ArrDelay)),geom = 'boxplot')+coord_cartesian(ylim = c(-100, 50))
qplot( y= DepDelay,x = CancellationCode,data = subset(slim, !is.na(DepDelay)), geom = 'boxplot')
qplot( y= DepDelay,x = Cancplotelled,data = subset(slim, !is.na(Cancelled)), geom = 'boxplot')
qplot( y= DepDelay,x = CancellationCode,data = subset(slim, !is.na(CancellationCode)), geom = 'boxplot')
qplot( y= Month,x = CancellationCode,data = subset(slim, !is.na(CancellationCode)), geom = 'boxplot')
qplot( y= DepDelay,x = UniqueCarrier,data = subset(slim, !is.na(UniqueCarrier)), geom = 'boxplot')+coord_cartesian(ylim = c(-50, 80))
qplot( y= Distance,x = CancellationCode,data = subset(slim, !is.na(CancellationCode)), geom = 'boxplot')+geom_jitter(width = 0.2)
qplot( y= DepDelay,x = Month,data = slim, geom = 'boxplot')


qplot( y= DepDelay,x = Quarter,data = subset(slim, !is.na(Quarter)), geom = 'boxplot')

qplot( y= DepDelay,x = as.factor(Quarter),data = subset(slim, !is.na(Quarter)), geom = 'boxplot')+coord_cartesian(ylim = c(-50, 80))

