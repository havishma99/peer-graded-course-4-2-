NEI <- readRDS("summarySCC_PM25.rds")
data_baltimore=NEI[NEI$fips=="24510" & NEI$type=="ON-ROAD",]
sum_emission_b<-tapply(data_baltimore$Emissions,data_baltimore$year,sum)
nb=names(sum_emission_b)

data_los_angeles=NEI[NEI$fips=="06037" & NEI$type=="ON-ROAD",]
sum_emission_l<-tapply(data_los_angeles$Emissions,data_los_angeles$year,sum)
nl=names(sum_emission_l)

png("plot6.png",width=480,height = 480)
par(mfrow = c(1, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
plot(nb,sum_emission_b,type="o" , col ="purple",xlab="Year", ylab="Emission",main="Baltimore")
plot(nl,sum_emission_l,type="o" , col ="pink",xlab="Year", ylab="Emission",main="LOS ANGELES")
mtext("Comparision Emission(motor)",outer=TRUE, cex=2.5)
dev.off()
