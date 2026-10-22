# %% Goal 1 · When Python helps
# Explain a useful Python research use case.
# Why does switching languages alone not solve a memory limit?
# Name one factor besides language that affects reading/processing/saving speed.

# %% Setup (Goal 2)
import numpy as np
import pandas as pd

# %% Synthetic data
visit = pd.DataFrame(
    {
        "id": np.repeat([f"P{i:02d}" for i in range(1, 7)], 2),
        "arm": np.repeat(np.repeat(["control", "treated"], 3), 2),
        "week": np.tile([0, 4], 6),
        "marker": [4.1, 4.4, 5.0, np.nan, 4.6, 4.8,
                   5.2, 4.6, 6.0, 5.1, 5.6, np.nan],
    }
)

# %% Goal 3 · Recognize and inspect objects
values = [1, 2, 3]
x = np.array([1.0, 2.0, 3.0])
# Predict values * 2 and x * 2. Run them and explain the difference.
# Inspect types, including visit["marker"] versus visit[["marker"]].
# Report visit.shape, dtypes, head, missing counts, and ID/week key uniqueness.

# %% Goal 4 · Translate the week-4 analysis
# Run r-reference.R in R, then return to the Python session.
# Create week4: retain all week-4 rows and add month = week / 4.
# Create summary with arm, n_total, n_observed, mean_marker, and sd_marker.
# Keep missing outcomes in the total denominator.

# %% Goal 5 · Compare indexing and missingness
x = np.array([10, 20, 30, 40])
# Predict x[1:3] and x[-1]; compare with R's corresponding expressions.
# Compare week4.iloc[0:2] with week4.loc[1:3]. Why would loc[0] fail?
# Create treated_week4 using two parenthesized conditions joined by &.
# Compare R, pandas, and NumPy means for 4.4, missing, and 4.8.
# Record R results as comments. Leave deliberate errors commented out.

# %% Goal 6 · Independent counts and R reference
# Check input dimensions, ID/week uniqueness, and the number of week-4 rows.
# Independently count total and observed rows in each arm.
# The following reference comes from r-reference.R; do not derive it from summary.
r_reference = pd.DataFrame(
    {
        "arm": ["control", "treated"],
        "n_total": [3, 3],
        "n_observed": [2, 2],
        "mean_marker": [4.6, 4.85],
        "sd_marker": [0.282842712474619, 0.353553390593274],
    }
)

# Align summary and r_reference by arm before comparing them.
# Compare labels/counts exactly, and means/SDs with assert_allclose.
# For this example: rtol=0, atol=1e-12, equal_nan=False.

# %% Goal 6 · Diagnose a wrong denominator
# Create wrong_week4 and wrong_summary separately by dropping missing outcomes.
# Which estimates still match? Which check detects the error?
# Keep the correct week4 and summary objects unchanged.
# Leave any intentionally failing assertion commented out.

# %% Goal 6 · Final clean run
# Save, restart Python, and run all cells in order.
# Add a success message after your checks and record your clean-run result here.

# %% Optional diagnostic plot
# import matplotlib.pyplot as plt
# Plot participant-level marker by week and arm with clear labels.

# %% AI disclosure
# AI use: Replace with None or a concise description of assistance and checks.
