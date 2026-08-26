# %% Setup
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

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

# %% 1. Inspect
# Report shape, dtypes, first rows, missing counts, and key uniqueness.


# %% 2. Week-4 analysis
# Keep all week-4 rows. Report total n, observed n, mean, and SD by arm.


# %% 3. Independent verification
# Verify total and observed counts with a second simple approach.


# %% 4. R reference comparison
r_reference = pd.DataFrame(
    {
        "arm": ["control", "treated"],
        "n_total": [3, 3],
        "n_observed": [2, 2],
        "mean_marker": [4.6, 4.85],
    }
)
# Compare your matching columns with r_reference.


# %% 5. Diagnostic plot
# Plot participant-level marker by week and arm with clear labels.


# %% AI disclosure
# AI use: Replace with None or a concise description of assistance and checks.

