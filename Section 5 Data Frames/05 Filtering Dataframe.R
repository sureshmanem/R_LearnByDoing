
# Read CSV file
data <- read.csv('P2-Demographic-Data.csv')
data

## Filtering Data Frames
filter <- data$Internet.users < 2
data[filter,]
data[data$Birth.rate>40,]
data[data$Birth.rate>40 & data$Internet.users < 2,]
data[data$Income.Group == 'High income',]
levels(data$Income.Group)
data[data$Country.Name == 'Malta',]