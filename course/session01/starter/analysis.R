# BIOS6301 Session 1: saved R instructions

# Read the synthetic data from the project data folder.
clinic <- read.csv("data/clinic_summary.csv")

# Create named summary objects.
n_records <- nrow(clinic)
mean_age <- mean(clinic$age, na.rm = TRUE)
median_marker <- median(clinic$marker, na.rm = TRUE)

# Print selected results when the complete script is sourced.
n_records
mean_age
median_marker
