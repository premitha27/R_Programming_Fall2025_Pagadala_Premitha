### Corrected Tukey multiple outlier function
tukey.outlier <- function(v) {
  q1 <- quantile(v, 0.25)
  q3 <- quantile(v, 0.75)
  iqr <- q3 - q1
  lower <- q1 - 1.5 * iqr
  upper <- q3 + 1.5 * iqr
  v < lower | v > upper
}

corrected_tukey <- function(x) {
  
  # Defensive programming checks
  if (!is.matrix(x)) {
    stop("Input must be a matrix.")
  }
  if (!is.numeric(x)) {
    stop("Matrix must be numeric.")
  }
  
  outliers <- array(TRUE, dim = dim(x))
  
  for (j in seq_len(ncol(x))) {
    # FIXED: element-wise AND (&) instead of scalar AND (&&)
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  
  outlier.vec <- logical(nrow(x))
  
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  
  return(outlier.vec)
}

# Test matrix
set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)

# Running this version works
corrected_tukey(test_mat)
