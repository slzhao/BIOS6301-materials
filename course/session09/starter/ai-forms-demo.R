# Session 9: one small example for inline completion, chat, and an agent.
# Copy this file to work/session09/ in your personal repository.

x <- c(4, 6, 8, NA)
# Calculate the mean of the observed values using base R.
mean_x <- mean(x, na.rm = TRUE)
print(mean_x)

# Inline: replace the mean_x assignment with its prefix and review a completion.
# Chat: ask why mean(x) returns NA and check the explanation in R.
# Agent: keep x unchanged; add checks for total n = 4, observed n = 3,
# and mean_x = 6. Review the diff and run the saved script.
