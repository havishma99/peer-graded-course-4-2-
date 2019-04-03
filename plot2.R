NEI <- readRDS("summarySCC_PM25.rds")
data_baltimore=NEI[NEI$fips=="24510",]
sum_emission<-tapply(data_baltimore$Emissions,data_baltimore$year,sum)
n=names(sum_emission)
png("plot2.png",width=480,height = 480)
plot(n,sum_emission,type="o" , col ="red",xlab="Year", ylab="Emission",main=" PM2.5 (emission) Baltimore City, Maryland ")
dev.off()