
**Choose one of the two matching report templates supplied in the ZIP.**

1. Extract the complete ZIP into your course project.
2. Read `midterm-questions.html`, including its Data reference section.
3. Open `midterm-starter.Rmd` or `midterm-starter.qmd`, replace the author placeholder, and answer all
   14 questions. Keep the report beside the supplied `data/` directory.
4. Knit/render the report with its containing folder as the execution directory.
   The starter creates `results/` for your local image exports.
5. Submit only the completed Rmd or Qmd and matching self-contained HTML.
   The HTML must include both exported images, their comparison, and their
   MD5 checksums. Submit
   neither the separate images nor the supplied data files.

Work individually; course
materials and R documentation are permitted, but collaboration and AI assistance
are not. Keep analysis code visible; Question 12 asks for an illustrative chunk
as text and does not require hiding the code in the rest of the report.

Packages needed: dplyr, tidyr, ggplot2, readr, data.table, arrow, rmarkdown, and knitr.
Use `data.table::fread()` without attaching the package. Install any missing
package in the Console before starting the report.
Use relative paths and preserve `data/cohort.rds`, `data/visits.csv.gz`, and
`data/visits.txt`, and `data/checksums.csv` unchanged. The two visit files contain
the same records in different text formats; compare them, then analyze one copy.
The endpoint is week-12 minus baseline SBP.

`data/visits.parquet` is another copy of those visit records; preserve it too.
The Arrow/Parquet task is required and graded. Read the short introduction and
linked documentation, install the package in the Console, and apply the reader.
All four data-file fingerprints are in the manifest.
Question 2 requires calculating all four input MD5s and showing their comparison
with that manifest (2 of its 6 points). Source/HTML checksums are not required.
Question 8 collects one QC table with results or references to earlier output;
do not repeat calculations or tables. Question 9 asks for two
figures; Question 13 compares the scatterplot exported at 72 and 300 DPI.
Question 14 grades relative paths and automatic export creation, figure
fingerprints and their meaning, and complete rendering with `sessionInfo()`
and an automatic `Sys.time()` generation timestamp (date, time, and time zone).
Display the timestamp in the subtitle or near the end; calculate it anew
during rendering rather than typing a fixed value or using cached output.

Keep code and requested results in the report. Image exports may be PNG or JPG;
use the same format and other settings for both DPI values, and embed both
images in the HTML. Your source must regenerate them using relative paths.

The starter supplies comparison, QC-table, plot-label/theme, and metadata
templates. Complete the requested calculations and uncomment/adapt the
templates; supplied formatting is not separately graded. Question 11 requires
diagnosis and a hypothetical missingness explanation, not a repeated summary.
An earlier mistake is assessed where it originates; later work earns credit
when it meets the later question's requirements using your intermediate results.
See the questions for the full partial-credit policy.
