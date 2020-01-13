# Scennario: You are a DataScientist working for a consulting firm. One of your
# collegues from the Auditing department has asked you to help them assess the 
# financial statement of organization X.

# You have been supplied with two vectors of data: Monthly Revenue and Monthly
# Expenses for the financial year in question. Your task is to calculate the following
# financial metrics:

# - Profit for each month
# - Profit after tax for each month (tax rate : 30%)
# - Profit margin for each month - equals to profit after tax divided by revenue
# - Good Months - where the profit after tax was greater than the mean for the year.
# - Bad months - wehre thee profit after tax was less than the mean for the year
# - The best month - where the profit after tax was max for the year
# - The worst month - where the profit after tax was min for the year

# All results needs to be presented as vectors.

# Results for dollar values need to be calculated with $0.01 precision, but need to be
# presented in Units of $1000 (1k) with no decimal points.

# Results for the profit margin ratio need to be presented in units of % with no
# decimal points

# Note: Your collegue has warned you that it it okay for tax for any given month to be 
# negative (in accounting terms, negative tax translates into a deferred tax asset).


#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
# profit for each month
profit <- revenue - expenses
profit

# profit aftr tax for each month (tax rate 30%)
tax <- round(profit * 0.3, digits = 2)
tax

profit.after.tax <- profit - tax
profit.after.tax

# profit margin after each month - equals to profit after tax divided by revenue
profit.margin <- round(profit.after.tax / revenue,2) * 100
profit.margin

# good months - where the profit after tax was greater than mean for the year
mean.pat <- mean(profit.after.tax)
mean.pat

good.months <- profit.after.tax > mean.pat
good.months

# bad months - where the profit after tax was less than mean for the year
#bad.months <- profit.after.tax < mean.pat
# or
bad.months <- !good.months
bad.months

# the best month - where the profit after tax was max for the year
best.month <- profit.after.tax == max(profit.after.tax)
best.month

# the worst month - wheret the profiter after tax was min for the year
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

# Units of Thousands
revenue.1000 <- round(revenue / 1000)
expenses.1000 <- round(expenses / 1000)
profit.1000 <- round(profit / 1000)
profit.after.tax.1000 <- round(profit.after.tax / 1000)

# Output
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month


# Matrices
m <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

m
