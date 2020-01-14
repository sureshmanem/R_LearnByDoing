
getwd()
setwd('C:\\SureshManem\\Learning\\R\\Section 6 Advanced Visuzlization')

# Data set
movies <- read.csv('P2-Movie-Ratings.csv')
head(movies)
colnames(movies) <- c('Film','Genre','CriticRating','AudienceRating','BudgetMillions','Year')
head(movies)
tail(movies)
str(movies)
summary(movies)

# Factoring the Year
movies$Year <- factor(movies$Year) 
summary(movies)
str(movies)

#-------- Aesthetics
install.packages("ggplot2")
library(ggplot2)
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))

# Add Geometry
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating)) + 
  geom_point()

# Add Color
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre, size=BudgetMillions)) + 
  geom_point()