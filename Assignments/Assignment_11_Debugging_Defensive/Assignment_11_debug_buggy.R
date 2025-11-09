### This script reproduces the Tukey outlier bug.

# Original buggy function
tukey_multiple <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    # BUG: using && instead of &
    outliers[, j] <- outliers[, j] && tukey.outlier(x[, j])
  }
  outlier.vec <- vector("logical", length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  return(outlier.vec)
}

# Test matrix from assignment
set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)

# Running this will produce an error
tukey_multiple(test_mat)
