# Center a numeric vector by one finite number.
# Returns a vector of the same length, preserving missing positions.
centre_values <- function(x, centre = 0) {
  stopifnot(
    "x must be a numeric vector" = is.numeric(x) && is.null(dim(x)),
    "centre must be one finite number" =
      is.numeric(centre) && length(centre) == 1 &&
      is.null(dim(centre)) && is.finite(centre)
  )
  x - centre
}
