#' Standardization Function
#'
#' This function standardizes a numeric vector using the formula:
#' z = (x - mean(x)) / sd(x)
#'
#' @param data A numeric vector to be standardized.
#' @return A numeric vector with standardized values.
#' @examples
#' standardize(c(10, 20, 30, 40, 50))
#' @export
standardize <- function(data) {
  if (!is.numeric(data)) stop("Input data must be numeric")
  standardized_data <- (data - mean(data, na.rm = TRUE)) / sd(data, na.rm = TRUE)
  return(standardized_data)
}
