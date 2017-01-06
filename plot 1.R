## file working directory
getwd()
## read the files
NEI <- readRDS("C:/Users/Hoang/Documents/data/course project 2/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/Hoang/Documents/data/course project 2/Source_Classification_Code.rds")
aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum)
## export the plot 1
png('plot1.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' emissions at various years'))
dev.off()
