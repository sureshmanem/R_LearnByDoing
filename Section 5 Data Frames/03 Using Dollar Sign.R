
# Read CSV file
data <- read.csv('P2-Demographic-Data.csv')
data

## Using the $ Sign
data
head(data)
data[3,3]
data[3,'Birth.rate']
data$Income.Group
data$Internet.users
data$Internet.users[2]
data[2,'Internet.users']
levels(data$Income.Group)