# bloodpressure is available
summary(bloodpressure)

# Create the formula and print it
fmla <- blood_pressure ~ weight + age
print(fmla)

# Fit the model: bloodpressure_model
bloodpressure_model <- lm(fmla, bloodpressure)

# Print bloodpressure_model and call summary() 
print(bloodpressure_model)
summary(bloodpressure_model)

# Predict blood pressure using bloodpressure_model: prediction
bloodpressure$prediction <- predict(bloodpressure_model)

# Plot the results
ggplot(bloodpressure, aes(x= prediction, y= blood_pressure)) + 
  geom_point() +
  geom_abline(color = "blue")