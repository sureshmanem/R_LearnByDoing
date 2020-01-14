## Data Import
## Method 1: Importing the Data
data <- read.csv(file.choose())
data

## Method 2: Set Working Directory and Read Data
# Get Working Director
getwd() 
# Set Working Directory
setwd('C:\\Users\\212171\\OneDrive - Cognizant\\Learning\\R\\Section 5 Data Frames')
# Remove of clear data
rm(data)
# Read CSV file
data <- read.csv('P2-Demographic-Data.csv')
data
