# Get the number of observations
n_obs <- nrow(Sonar)

# Shuffle row indices: permuted_rows
permuted_rows <- sample(n_obs)

# Randomly order data: Sonar
Sonar_shuffled <- Sonar[permuted_rows, ]

# Identify row to split on: split
split <- round(n_obs * 0.60)

# Create train
train <- Sonar_shuffled [1:split, ]

# Create test
test <- Sonar_shuffled[(split + 1):nrow(Sonar),]

# Fit glm model: model
model <- glm(Class ~ . , family = "binomial", train) 

# Predict on test: p
p <- predict(model, test, type = "response")