## file working directory
getwd()
## read the files
NEI <- readRDS("C:/Users/Hoang/Documents/data/course project 2/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/Hoang/Documents/data/course project 2/Source_Classification_Code.rds")
subsetNEI  <- NEI[NEI$fips=="24510", ]
aggregatedTotalByYear <- aggregate(Emissions ~ year, subsetNEI, sum)
## export plot 2
png('plot2.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years'))
dev.off()

