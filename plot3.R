library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
NEI <- NEI[NEI$fips == 24510,]
subset_data<-aggregate(NEI$Emissions,by=list(year=NEI$year,type=NEI$type),FUN=sum)
colnames(subset_data)<-c("year","type","emission")

qplot(year,emission,margin=T,facets=.~type,geom=c("line"),data=subset_data,color=type,main="Emission(types) PM(2.5) -Baltimore")
ggsave(filename="plot3.png")