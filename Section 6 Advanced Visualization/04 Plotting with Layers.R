
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

#------ Plotting with layers
p <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre, size=BudgetMillions))
# Points
p + geom_point()

# Lines
p + geom_line()

# Multiple Layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()

# Overriding Aesthetics

q <- ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                            colour=Genre, size=BudgetMillions))

q + geom_point()

# Overriding Aesthetics
# ex1
q + geom_point(aes(size=CriticRating))
# ex2
q + geom_point(aes(colour=BudgetMillions))
# Reverting
q + geom_point()

# ex3
q + geom_point(aes(x=BudgetMillions))

q + geom_point(aes(x=BudgetMillions)) + xlab('Budget Millions $')

# ex4
q + geom_line() + geom_point()
q + geom_line(size=1) + geom_point()