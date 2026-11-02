# Prepared implementation of the supplied level-3 plan, not an AI transcript.
# Copy beside sbp-demo.csv to work/session09/; run from repository root.
library(ggplot2)
trial <- read.csv("work/session09/sbp-demo.csv")
visits <- c("sbp_0", "sbp_6", "sbp_12")
stopifnot(nrow(trial) == 60L, !anyDuplicated(trial$id),
          all(vapply(trial[visits], is.numeric, logical(1))),
          identical(as.integer(table(trial$arm)), c(30L, 30L)))
print(colSums(is.na(trial[visits])))
print(with(trial, table(arm, is.na(sbp_12))))

# Reshape only the needed columns. Each patient contributes three visit rows.
long <- reshape(trial[c("id", "arm", visits)], varying = visits,
                v.names = "sbp", timevar = "week", times = c(0, 6, 12),
                idvar = "id", direction = "long")
groups <- split(long, list(long$week, long$arm), drop = TRUE)
visit_summary <- do.call(rbind, lapply(groups, function(d) {
  data.frame(arm = d$arm[1], week = d$week[1],
             n_observed = sum(!is.na(d$sbp)),
             mean_sbp = mean(d$sbp, na.rm = TRUE))
}))
rownames(visit_summary) <- NULL
stopifnot(nrow(visit_summary) == 6L,
          all(visit_summary$n_observed[visit_summary$week < 12] == 30L),
          identical(visit_summary$n_observed[visit_summary$week == 12], c(28L, 29L)))
print(visit_summary)
write.csv(visit_summary, "work/session09/sbp-visit-summary.csv", row.names = FALSE)

keep <- complete.cases(trial[c("sbp_0", "sbp_12")])
plot_data <- trial[keep, ]
stopifnot(nrow(plot_data) == 57L, sum(!keep) == 3L)
print(c(input_patients = nrow(trial), plotted_pairs = sum(keep), omitted = sum(!keep)))
p <- ggplot(plot_data, aes(sbp_0, sbp_12, color = arm, shape = arm)) +
  geom_point(size = 3, alpha = 0.8) +
  scale_color_manual(values = c(Placebo = "#0072B2", Treatment = "#D55E00")) +
  labs(x = "Baseline SBP (mmHg)", y = "Week-12 SBP (mmHg)",
       color = "Arm", shape = "Arm",
       title = "Session 4 synthetic trial: SBP at two visits",
       subtitle = "57 complete pairs from 60 patients; 3 lack week-12 SBP") +
  theme_minimal(base_size = 17)
print(p)
ggsave("work/session09/sbp-reference.png", p, width = 9, height = 5, dpi = 160)
