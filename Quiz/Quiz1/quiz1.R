# source("E:/Coursera/R_Programming/Quiz/Quiz1/quiz1.R")
# read.csv("E:/Coursera/R_Programming/Quiz/Quiz1/hw1_data.csv")

data <- read.csv("E:/Coursera/R_Programming/Quiz/Quiz1/hw1_data.csv")

# print first 10 rows of mydata
# print(head(data, n=2))
# print(data[1:2,])

# show data frame shape
# print(dim(data))

# print last 2 rows of data
# print(tail(data, n=2) )

# the value of Ozone in the 47th row
# print(data[47,"Ozone"])

# count of num. of rows of data that have missing values
# print(nrow(data[!complete.cases(data[,"Ozone"]),]))

# the mean of the Ozone column in this dataset (excludes missing values)
# completeData <- data[complete.cases(data),]
# print(mean(completeData[,"Ozone"]))

# subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. 
# What is the mean of Solar.R in this subset
# completeData <- data[complete.cases(data[,"Ozone"]),]
# subData <- subset(completeData, Ozone > 31 & Temp > 90)
# print(subData)
# print(mean(subData[,"Solar.R"]))

# the mean of "Temp" when "Month" is equal to 6
# completeData <- data[complete.cases(data[,"Month"]),]
# subData <- subset(completeData, Month == 6)
# print(subData)
# print(mean(subData[,"Temp"]))

# the maximum zone value in the month of May (i.e. Month = 5)
completeData <- data[complete.cases(data[,"Month"], data[,"Ozone"]),]
subData <- subset(completeData, Month == 5)
print(subData)
print(max(subData[,"Ozone"]))



