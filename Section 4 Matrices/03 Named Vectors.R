# Named Vectors

Charlie <- 1:5
Charlie

# give names
names(Charlie) <- c('a','b','c','d','e')
Charlie
Charlie['d']

# Clear names
names(Charlie) <- NULL
Charlie

# --------

# Naming Matrix Dimention 1
temp.vec <- rep(c('a','B','ZZ'),3)

rep(c('a','B','ZZ'),times=3)
rep(c('a','B','ZZ'),each=3)

temp.vec <- rep(c('a','B','ZZ'),each=3)
temp.vec

Bravo <- matrix(temp.vec,3,3)
Bravo

rownames(Bravo) <- c('How','are','you')
Bravo

colnames(Bravo) <- c('x','y','z')
Bravo

Bravo['are','y'] <- 0
Bravo

rownames(Bravo)
colnames(Bravo)

rownames(Bravo) <- NULL
Bravo

colnames(Bravo) <- NULL
Bravo
