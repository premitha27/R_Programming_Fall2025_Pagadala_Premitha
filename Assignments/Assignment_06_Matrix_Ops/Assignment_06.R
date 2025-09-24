# Task 1: define A and B
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)
# Addition
A_plus_B <- A + B
print("A + B:")
print(A_plus_B)
# Subtraction
A_minus_B <- A - B
print("A - B:")
print(A_minus_B)

# Task 2: Create a Diagonal Matrix
D <- diag(c(4, 1, 2, 3))
print("Diagonal Matrix D:")
print(D)

# Task 3: Construct a Custom 5x5 Matrix
# Step 1: create the first row
row1 <- c(3, 1, 1, 1, 1)
# Step 2: create the remaining rows:
# - first column all 2’s (rows 2–5)
# - diagonal of 3’s starting from row 2
block <- diag(3, 4)   # 4x4 identity scaled by 3
col_block <- matrix(2, nrow = 4, ncol = 1)
rest <- cbind(col_block, block)
# Step 3: combine row 1 with the rest
M <- rbind(row1, rest)
print("Custom 5x5 Matrix M:")
print(M)


