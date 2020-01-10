# What is a Vector?
# It is a Sequence of data that stores like an array
# The index starts from 1, where as in other languages starts from 0

myFirstVector <- c(3, 45, 56, 172) # Called Numeric Vector
is.numeric(myFirstVector)
is.integer(myFirstVector)
is.double(myFirstVector)

mySecondVector <- c(2L, 45L, 56L, 172L)
is.numeric(mySecondVector)
is.integer(mySecondVector)
is.double(mySecondVector)

myThirdVector <- c('Y','Yes','Hello','a') # Called Character Vector
is.character(myThirdVector)
is.numeric(myThirdVector)

myFourthVector <- c('Y','Yes',132,132L) # Do not mix like this
is.character(myFourthVector)
is.numeric(myFourthVector)

# Functions

seq() # Sequence - like ':'
rep() # Replicate

seq(1,15)
1:15
seq(1,15,2)
z <- seq(1,15,4)
z

rep(3,15)
y <- rep(3,15)
y
rep('a',5)


x <- c(80,20)
y <- rep(x,10)
y








