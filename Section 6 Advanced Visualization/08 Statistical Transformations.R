
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

# ----- Statistical Transformations

?geom_smooth
u <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre))
u + geom_point() + geom_smooth(fill=NA)

# Boxplots
u <- ggplot(data=movies,aes(x=Genre,y=AudienceRating,colour=Genre))
u + geom_boxplot()
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()
u + geom_boxplot(size=1.2) + geom_jitter()
u + geom_jitter() + geom_boxplot(size=1.2,alpha=0.5)

# Using Facets

v <- ggplot(data=movies,aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10,aes(fill=Genre), 
                   colour='Black')

install.packages("stringi",type="win.binary")
library(stringi)

v + geom_histogram(binwidth = 10,aes(fill=Genre), 
                   colour="Black") +
  facet_grid(Genre~.,scales='free')

w <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre))
w + geom_point(size = 3) + 
  facet_grid(Genre~.)

w + geom_point(size = 3) + 
  facet_grid(.~Year)

w + geom_point(size = 3) + 
  facet_grid(Genre~Year)

w + geom_point(size = 3) + 
  geom_smooth() + 
  facet_grid(Genre~Year)

w + geom_point(aes(size = BudgetMillions)) + 
  geom_smooth() + 
  facet_grid(Genre~Year)