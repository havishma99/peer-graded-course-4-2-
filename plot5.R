NEI <- readRDS("summarySCC_PM25.rds")
data_baltimore=NEI[NEI$fips=="24510" & NEI$type=="ON-ROAD",]
sum_emission<-tapply(data_baltimore$Emissions,data_baltimore$year,sum)
n=names(sum_emission)
png("plot5.png",width=480,height = 480)
plot(n,sum_emission,type="o" , col ="purple",xlab="Year", ylab="Emission",main=" PM2.5 (emission) Baltimore City, Maryland MOTOR VEHICLES")
dev.off()