# 1. Create the matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# 2. Inspect dimensions
dimA <- dim(A)   # should be 10 × 10
dimB <- dim(B)   # should be 10 × 100
print("Dimensions of A:")
print(dimA)
print("Dimensions of B:")
print(dimB)

# 3. Compute inverse and determinant for A
invA <- solve(A)
detA <- det(A)
print("Inverse of A:")
print(invA)
print("Determinant of A:")
print(detA)

# 4. Handle non-square matrix B with tryCatch
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)
print("Inverse of B attempt:")
print(invB)
print("Determinant of B attempt:")
print(detB)

