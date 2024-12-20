#' Normalization Function
#'
#' This function normalizes a numeric vector to a range of [0, 1] using the formula:
#' x' = (x - min(x)) / (max(x) - min(x))
#'
#' @param data A numeric vector to be normalized.
#' @return A numeric vector with normalized values in the range [0, 1].
#' @examples
#' normalize(c(10, 20, 30, 40, 50))
#' normalize(c(5, 5, 5, 5))
#' normalize(c(10, 20, NA, 30))
#' @export
normalize <- function(data) {
  if (!is.numeric(data)) stop("Input data must be numeric.")
  if (length(data) == 0) stop("Input data is empty. Please provide a non-empty numeric vector.")

  range_val <- max(data, na.rm = TRUE) - min(data, na.rm = TRUE)
  if (range_val == 0) {
    return(rep(0, length(data)))
  }

  normalized_data <- (data - min(data, na.rm = TRUE)) / range_val
  return(normalized_data)
}

