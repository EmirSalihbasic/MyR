# Define the initial cost, salvage value, and useful life
initial_cost <- 10000
salvage_value <- 2000
useful_life <- 5

# Initialize the accumulated depreciation to zero
accumulated_depreciation <- 0

# Loop through each year of the useful life
for (year in 1:useful_life) {
  
  # Calculate the DDB depreciation for the current year
  depreciation_ddb <- 2 / useful_life * (initial_cost - accumulated_depreciation)
  
  # Add the current year's depreciation to the accumulated depreciation
  accumulated_depreciation <- accumulated_depreciation + depreciation_ddb
  
  # Print the current year's depreciation
  cat("DDB depreciation for year", year, "is", depreciation_ddb, "\n")
}