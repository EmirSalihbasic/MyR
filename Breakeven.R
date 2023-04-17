# Define the fixed costs and variable costs
fixed_costs <- 5000
variable_costs <- 100

# Define the selling price
selling_price <- 150

# Define the profit function
profit <- function(q) {
  revenue <- selling_price * q
  costs <- fixed_costs + variable_costs * q
  profit <- revenue - costs
  return(profit)
}

# Find the breakeven point
breakeven_point <- uniroot(profit, c(0, 10000))$root

# Print the result
cat("The breakeven point is", breakeven_point, "units.\n")