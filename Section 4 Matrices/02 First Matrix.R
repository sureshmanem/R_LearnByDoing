
# Matrices

?matrix
my.data <- 1:20
my.data

A <- matrix(my.data,4,5)
A
A[2,3]

B <- matrix(my.data,4,5,TRUE)
B
B[2,5]

# rbind()
r1 <- c('I','am','happy')
r2 <- c('what','a','day')
r3 <- c(1,2,3)

C <- rbind(r1,r2,r3)
C

# cbind()
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D









