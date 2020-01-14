

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

q <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre, size=BudgetMillions))

## ------- Mapping Vs Setting

q + geom_point(aes(x=BudgetMillions)) + xlab('Budget Millions $')


r <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre, size=BudgetMillions))
r + geom_point()

# Add Color
# 1. Mapping
r + geom_point(aes(colour=Genre))
# 2. Setting
r + geom_point(colour="Green")
# Error
#r + geom_point(aes(colour='Green'))

# 1. Mapping
r + geom_point(aes(size=BudgetMillions))
# 2. Setting
r + geom_point(size=10)
# Error
#r + geom_point(aes(size=10))