# You are employed as a Data Scientist by the World Bank and you are working on a
# project to analyse the World's demographic trends.
# You are required to produce a scatterplot illustrating Birth Rate and Internet Usage
# statistics by Country.
# The scatterplot needs to also be categorised by Countries' Income Groups. 

# You have received an urgent update from your manager.
# You are required to produce a second scatterplot also illustrating Birth Rate and
# Internet Usage statistics by Country.
# However, this time the scatterplot needs to be categorised by Countries' Regions.
# Additional data has been supplied in the form of R vectors.

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

## Filtering Data Frames
filter <- data$Internet.users < 2
data[filter,]
data[data$Birth.rate>40,]
data[data$Birth.rate>40 & data$Internet.users < 2,]
data[data$Income.Group == 'High income',]
levels(data$Income.Group)
data[data$Country.Name == 'Malta',]


## Introduction to qplot
install.packages('ggplot2')
library(ggplot2)
?qplot
qplot(data=data,x=Internet.users)
qplot(data=data,x=Income.Group,y=Birth.rate)
qplot(data=data,x=Income.Group,y=Birth.rate,size=I(3))
qplot(data=data,x=Income.Group,y=Birth.rate,size=I(3),
      colour=I('blue'))
qplot(data=data,x=Income.Group,y=Birth.rate,geom='boxplot')

## Visualizing with qplot part 1
qplot(data=data,x=Internet.users,y=Birth.rate)
qplot(data=data,x=Internet.users,y=Birth.rate,
      size=I(4),colour=I('red'))
qplot(data=data,x=Internet.users,y=Birth.rate,
      size=I(4),colour=Income.Group)

## Building the Dataframes
#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

mydf <- data.frame(Countries_2012_Dataset,
                   Codes_2012_Dataset,
                   Regions_2012_Dataset)
head(mydf)
colnames(mydf) <- c('Country','Code','Regions')
head(mydf)
rm(mydf)

# Saving Time
mydf <- data.frame(Country=Countries_2012_Dataset,
                   Code=Codes_2012_Dataset,
                   Regions=Regions_2012_Dataset)

head(mydf)
tail(mydf)
summary(mydf)


## Merging Dataframe
head(data)
head(mydf)
merged <- merge(data,mydf,by.x='Country.Code',by.y='Code')
head(merged)
merged$Country <- NULL
str(merged)
tail(merged)
levels(merged$Regions)

## Visualizing with new Split - Part 2
qplot(data=merged,x=Internet.users,y=Birth.rate)
qplot(data=merged,x=Internet.users,y=Birth.rate,
      colour=Regions)
# Shapes
qplot(data=merged,x=Internet.users,y=Birth.rate,
      colour=Regions,size=I(5),shape=I(23))
# Transparency
qplot(data=merged,x=Internet.users,y=Birth.rate,
      colour=Regions,size=I(5),shape=I(19),
      alpha=I(0.6))
# Title
qplot(data=merged,x=Internet.users,y=Birth.rate,
      colour=Regions,size=I(5),shape=I(19),
      alpha=I(0.6),
      main='Birth Rate vs Internet Users')























