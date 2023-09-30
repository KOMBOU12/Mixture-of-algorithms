# Fit lm model using 10-fold CV: model
model <- train(
  price ~., 
  diamonds,
  method = "lm",
  trControl = trainControl(
    method = "cv", 
    number = 10,
    verboseIter = TRUE
  )
)

# Print model to console
print(model)

# Fit lm model using 10-fold CV: model
model <- train(
  price ~., 
  diamonds,
  method = "lm",
  trControl = trainControl(
    method = "cv", 
    number = 10,
    verboseIter = TRUE
  )
)

# Print model to console
print(model)