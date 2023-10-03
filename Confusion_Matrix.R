# If p exceeds threshold of 0.5, M else R: m_or_r
m_or_r <- ifelse(p > 0.5 , "M", "R")

# Convert to factor: p_class
p_class <- factor(m_or_r, levels = levels(test[["Class"]]))

# Create confusion matrix
confusionMatrix(p_class, test[["Class"]])