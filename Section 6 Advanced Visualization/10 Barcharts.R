

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

# ----- Barcharts
o <- ggplot(data=movies,aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth = 10,aes(fill=Genre),
                        colour='Black')

# Labels
h + 
  xlab('Money Axis') + 
  ylab('Number of Movies') + 
  ggtitle('Movie Budget Distribution') +
  theme(axis.title.x = element_text(colour='DarkGreen',size = 20),
        axis.title.y = element_text(colour='Red',size=20),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        legend.text = element_text(size=10),
        legend.title = element_text(size=10),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(colour='Blue',
                                  size=30,
                                  family='Ariel'))
