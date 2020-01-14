
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

## --- Histograms and Densities
s <- ggplot(data=movies,aes(x=BudgetMillions))
s + geom_histogram(binwidth = 10)

# Add Colour
s +geom_histogram(binwidth = 10,aes(fill=Genre))

# Add border
s +geom_histogram(binwidth = 10,aes(fill=Genre),colour='Black')

# Density Chart
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre),position='stack')