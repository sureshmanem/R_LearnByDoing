# The movie reviews website was very happy with your deliverable for the 
# previous assignment and now they have a new request for you.
# The previous consultant had created a chart for them which 
# is illustrated on the next slide. However, the R code used to create 
# the diagram has since been lost and cannot be recovered.

# Your task is to come up with the code that will re-create the same 
# chart making it look as close as possible to the original.

# A new dataset has been supplied.

getwd()
setwd('/Users/smanem/GitHub/R_LearnByDoing/Section 6 Advanced Visualization')
getwd()

mov <- read.csv('Section6-Homework-Data.csv')

# Data Exploration
head(mov)
summary(mov)
str(mov)


# Activate ggplot2
install.packages('ggplot2')
library(ggplot2)

# cool insight
ggplot(data=mov,aes(x=Day.of.Week)) + geom_bar()

levels(mov$Genre)
levels(mov$Studio)
# Filter #1 as Genre
filt <- (mov$Genre == 'action') | 
  (mov$Genre == 'adventure') |
  (mov$Genre == 'animation') |
  (mov$Genre == 'comedy') |
  (mov$Genre == 'drama')

# Filter #2 as Studio
filt2 <- mov$Studio %in% c('Buena Vista Studios','WB','Fox','Universal','Sony','Paramount Pictures')

mov2 <- mov[filt & filt2,]

# Prepare the plot's data and aes layers
p <- ggplot(data=mov2,aes(x=Genre,y=Gross...US))

#add geometries
q <- p + 
  geom_jitter(aes(size=Budget...mill.,
                  colour=Studio)) + 
  geom_boxplot(alpha=0.7,outlier.colour=NA)

# Non-data Link
q <- q + 
  xlab('Genre') + 
  ylab('Gross % US') +
  ggtitle('Domestic Gross % by Genre')

# Theme
q <- q +
  theme(
    axis.title.x = element_text(colour='Blue',size=30),
    axis.title.y = element_text(colour='Blue',size=30),
    axis.text.x = element_text(size=20),
    axis.text.y = element_text(size=20),
    plot.title = element_text(size=40),
    legend.title = element_text(size=20),
    legend.text = element_text(size=20),
    
    text = element_text(family='Comic Sans MS')
 
  )

# Final touch
q$labels$size <- 'Budget $M'
q
  
  
  
  
  
  
  
  
  





