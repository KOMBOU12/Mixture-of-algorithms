# Create two matrices of all 1's and all 2's that are 2 by 3 and 3 by 2, respectively
matrix(1, nrow = 2, ncol = 3)

print(matrix(2, nrow = 3, ncol = 2))

# Create a matrix B and change the byrow designation.
A <- matrix(c(1, 2, 3, 2), nrow = 2, ncol = 2, byrow = TRUE)
B <- matrix(c(1, 2, 3, 2), nrow = 2, ncol = 2, byrow = TRUE)

# Add A to the previously-created matrix B
A + B
# Vectors
b <- c(1,1)
# Multiply A by b
A %*% b

# Multiply B by b
B %*% b
# Multiply A by b
A%*%b

# Multiply B by b 
B%*%b

