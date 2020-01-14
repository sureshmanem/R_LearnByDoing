
# Read CSV file
data <- read.csv('P2-Demographic-Data.csv')
data


## Basic Operations with Data
data[1:10,]
data[3:9,]
data[c(4,100),]
is.data.frame(data[1,])
is.data.frame(data[,1])
is.data.frame(data[,1,drop=F])

# Multiply Columns
head(data)
data$Birth.rate * data$Internet.users
data$Birth.rate + data$Internet.users

# Adding Column
data$MyCalc <- data$Birth.rate * data$Internet.users
head(data)

# Test of knowledge
data$xyz <- 1:5
head(data,n=12)

# Removing column
data$MyCalc <- NULL
head(data)
data$xyz <- NULL
head(data)