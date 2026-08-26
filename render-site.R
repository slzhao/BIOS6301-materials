# Render the complete BIOS6301 student website.
#
# This uses the Quarto command-line program bundled with RStudio or installed
# separately. If it is not on PATH, set QUARTO_BIN to the full executable path.

find_quarto <- function() {
  configured <- Sys.getenv("QUARTO_BIN", unset = "")
  on_path <- Sys.which("quarto")
  rstudio_quarto <- Sys.getenv("RSTUDIO_QUARTO", unset = "")
  rstudio_pandoc <- Sys.getenv("RSTUDIO_PANDOC", unset = "")
  beside_rstudio_pandoc <- if (nzchar(rstudio_pandoc)) {
    file.path(dirname(rstudio_pandoc), "quarto.exe")
  } else {
    ""
  }

  candidates <- unique(c(
    configured,
    unname(on_path),
    rstudio_quarto,
    beside_rstudio_pandoc,
    file.path(Sys.getenv("PROGRAMFILES", unset = ""), "Quarto", "bin", "quarto.exe"),
    file.path(Sys.getenv("LOCALAPPDATA", unset = ""), "Programs", "Quarto", "bin", "quarto.exe")
  ))
  candidates <- candidates[nzchar(candidates) & file.exists(candidates)]

  if (!length(candidates)) {
    stop(
      "Quarto was not found. Install Quarto or set QUARTO_BIN to its executable.",
      call. = FALSE
    )
  }

  candidates[[1]]
}

status <- system2(find_quarto(), c("render", "."))
if (!identical(status, 0L)) {
  stop("Quarto rendering failed.", call. = FALSE)
}
