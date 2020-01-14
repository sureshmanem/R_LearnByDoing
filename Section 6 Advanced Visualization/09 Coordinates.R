
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

# ---- Coordinates

# Today:
# Limits
# Zoom

m <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            size=BudgetMillions,
                            colour='Blue'))
m + geom_point()
m + geom_point() + xlim(50,100) + ylim(50,100)

# wont work well always
n <- ggplot(data=movies,aes(x=BudgetMillions))
n + geom_histogram(binwidth = 10,aes(fill=Genre),colour='Black')
n + geom_histogram(binwidth = 10,aes(fill=Genre),
                   colour='Black') + 
  ylim(0,50)

# instead zoom
n + geom_histogram(binwidth = 10,aes(fill=Genre),
                   colour='Black') + 
  coord_cartesian(ylim=c(0,50))


w + geom_point(aes(size = BudgetMillions)) + 
  geom_smooth() + 
  facet_grid(Genre~Year) + 
  coord_cartesian(ylim=c(0,50))
