#Departed list
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")
#Average of the score
avg_review <- mean(scores)
reviews_df <- data.frame(scores, comments)
reviews_df