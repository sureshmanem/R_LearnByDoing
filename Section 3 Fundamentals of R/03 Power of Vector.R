# Vectorized Operations and its power


x <- rnorm(5)

# R-specific Programming Loop
for(i in x){
  print(i)
}

# Conventional Programming Loop
for(j in 1:5){
  print(x[j])
}

# --------- 2nd part

N <- 100 # Try increaseing 100, 1000, 10000, 100000, 1000000
a <- rnorm(N)
b <- rnorm(N)

# Vectorized Approach # Executes Faster
c <- a * b

# De-vectorized Approach # Delay in processing as the N increases
d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}








