# You have been approached as an analytics consultant by a movie reviews website.
# They are writing up an article analysing movie ratings by critics and audience as well
# as movie budgets for the years 2007-2011.
# This is the first time they are doing this analysis and they don't know exactly what
# they need. They have asked you to look into the data and provide them with 5 graphs
# that tell a story about the data.
# However, there is one chart the CEO specifically requested - a diagram showing how
# the correlation between audience and critic ratings has evolved throughout the years
# by genre. This is in addition to the other 5. See the next page for the CEO's "Vision".

getwd()
setwd('C:\\Users\\212171\\OneDrive - Cognizant\\Learning\\R\\Section 6 Advanced Visuzlization')

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
library(ggplot2)
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating))

# Add Geometry
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating)) + 
  geom_point()

# Add Color
ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,
                       colour=Genre, size=BudgetMillions)) + 
  geom_point()

# >>> This is # 1 (We will improve it)

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












