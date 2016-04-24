# function to build path to files from a list of folders and a file name
buildPath <- function(...) {
  paste(... , sep = .Platform$file.sep)
}

dataFolder <- "./data"
zipFileName <- buildPath(dataFolder, "dataset.zip")
fileName <- buildPath(dataFolder, "household_power_consumption.txt")

# create the data folder if it does not exists
if (!file.exists(dataFolder)) {
  dir.create(dataFolder)
}

# download and unzip data
if (!file.exists(zipFileName)) {
  sourceData <-
    "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(sourceData, destfile = zipFileName, method = "curl")
}

unzip(zipFileName, overwrite = TRUE, exdir = dataFolder)

# load the data for two specific days
fileData <- read.table(fileName,header = TRUE, sep = ";", na = "?")
attach(fileData)
twoDaysData <- Date == "1/2/2007" | Date == "2/2/2007"
rangeData <- fileData[twoDaysData,]
attach(rangeData)

rangeData$DateTime <-
  strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")
