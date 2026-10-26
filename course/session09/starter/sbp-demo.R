# Session 9: reuse the synthetic trial from Session 4.
# Copy sbp-demo.R and sbp-demo.csv to work/session09/ in your personal repo.
# Run from the repository root. Keep the input CSV unchanged.
# id: unique patient; arm: Placebo/Treatment.
# sbp_0, sbp_6, sbp_12: systolic BP in mmHg at baseline, 6 and 12 weeks.
# The 60 rows are invented teaching records, not real patients.
library(ggplot2)
trial <- read.csv("work/session09/sbp-demo.csv")

# Inline demonstration: type write.csv( and inspect any proposed continuation.
# Check the data object, output path, and row.names before accepting or running.

# Level 1: why does sourcing this script not display the plot?
# Then request colors by arm while keeping the axes.
p <- ggplot(trial, aes(sbp_0, sbp_12)) + geom_point()

# Level 2: request baseline x, week-12 y, colors by arm, labels in mmHg.
# Level 3: implement an agreed plan: inspect data, summarize observed SBP
# by visit and arm with counts, make the scatterplot, save and check outputs.
# Level 4: start with a question about SBP change over visits by arm,
# and request a justified analysis plan before implementing it.
