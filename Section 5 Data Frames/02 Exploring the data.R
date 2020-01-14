
# Read CSV file
data <- read.csv('P2-Demographic-Data.csv')
data

## Exploring the Data
# No.of Rows
nrow(data)
# No.of Columns
ncol(data)
# Top 6 rows
head(data)
# Bottom 6 rows
tail(data)
# Top 10 rows
head(data,n=10)
# Bottom 10 rows
tail(data,n=10)
# str is Structure
str(data)
# Summary: gives the breakdown
summary(data)