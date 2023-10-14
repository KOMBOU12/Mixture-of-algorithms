import numpy as np

# Create a vector Y
Y = np.array([1, 4, 2, 4.5, 2.2, 4.2])

#Create a matrix X
X = np.array([[-2, 0], [3, 2], [-1, 0], [1, 0], [-4, 0], [3, -2]])
print(X.shape)

# Transpose of X
X_transpose = np.transpose(X)


# Product of transpose of x and X
C = np.matmul(X_transpose,X)


#Adding the matrices and taking the inverse
I = np.array([[1, 0], [0, 1]])
inverse = np.linalg.inv(C+I)


#Valeur de theta
theta = np.matmul(inverse, X_transpose)
theta = np.matmul(theta, Y)
print(theta)
