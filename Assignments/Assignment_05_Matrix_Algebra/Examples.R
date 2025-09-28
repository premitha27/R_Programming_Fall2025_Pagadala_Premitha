# Create the matrices
A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)
# 1. Transpose (flip rows/columns)
A_t <- t(A)
B_t <- t(B)
# 2. Multiply matrix by a vector
v <- 1:10
A_multiplied <- A %*% v
# 3. Multiply two matrices
C <- A %*% B
dimC <- dim(C)
print("Transpose of A:")
print(A_t[1:5, 1:5])  # print sample
print("Transpose of B:")
print(B_t[1:5, 1:5])  # print sample
print("Matrix A times vector v:")
print(A_multiplied)
print("Dimensions of C = A %*% B:")
print(dimC)