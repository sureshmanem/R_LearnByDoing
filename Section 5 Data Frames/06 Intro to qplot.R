
# Read CSV file
data <- read.csv('P2-Demographic-Data.csv')
data

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