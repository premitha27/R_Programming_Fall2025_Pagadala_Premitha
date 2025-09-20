# Define the vector of assignment scores
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
# Custom function to calculate the mean of a numeric vector
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}
# Test the function on the vector
myMean(assignment2) # Output: mean value of assignment2