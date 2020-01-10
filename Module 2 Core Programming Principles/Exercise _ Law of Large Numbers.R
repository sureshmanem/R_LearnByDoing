# Test the Law of Large Numbers
# for N random normaly distributed numbers with 
# mean =0 and stdev = 1

# How many of these numbers fall between -1 and 1
# and divide by the total quantity of N

# You know that E(X) = 68.2%

# Check that Mean(Xn) -> E(X) as you rerun your
# script while increasing N

N <- 10000
counter <- 0
for(i in rnorm(N)){
  if(i > -1 & i < 1){
    counter <- counter + 1
  }
}
counter / N

# Compare to : 68.2% or 0.682

