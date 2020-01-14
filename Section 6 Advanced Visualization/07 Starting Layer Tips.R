
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

# ---- Starting Layer Tips

t <- ggplot(data=movies,aes(x=AudienceRating))
t + geom_histogram(binwidth=10,
                   fill='White',colour='Blue')

# another way
t <- ggplot(data=movies)
t + geom_histogram(binwidth=10,
                   aes(x=AudienceRating),
                   fill='White',colour='Blue')

t + geom_histogram(binwidth=10,
                   aes(x=CriticRating),
                   fill='White',colour='Blue')