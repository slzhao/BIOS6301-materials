# Session 10: the same six-participant analysis used in python-intro.py.
# Uses dplyr from the earlier course sessions.
library(dplyr)

visit <- data.frame(
  id = rep(sprintf("P%02d", 1:6), each = 2),
  arm = rep(rep(c("control", "treated"), each = 3), each = 2),
  week = rep(c(0, 4), 6),
  marker = c(4.1, 4.4, 5.0, NA, 4.6, 4.8,
             5.2, 4.6, 6.0, 5.1, 5.6, NA)
)

week4 <- visit[visit$week == 4, ]
week4$month <- week4$week / 4

r_summary <- week4 |>
  summarise(
    n_total = n(),
    n_observed = sum(!is.na(marker)),
    mean_marker = mean(marker, na.rm = TRUE),
    sd_marker = sd(marker, na.rm = TRUE),
    .by = arm
  )

stopifnot(nrow(visit) == 12, nrow(week4) == 6)
print(as.data.frame(r_summary), digits = 15)
