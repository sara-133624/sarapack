#' Range Check for Data Validation
#'
#' This function validates if numeric data falls within a specified range.
#' @param data A numeric vector to check for range violations.
#' @param min_val The minimum allowed value.
#' @param max_val The maximum allowed value.
#' @return A list containing the indices of violations and a cleaned vector.
#' @examples
#' range_check(c(5, 10, 20, 50), min_val = 10, max_val = 30)
#' @export
range_check <- function(data, min_val, max_val) {
  if (!is.numeric(data)) stop("Input data must be numeric.")

  violations <- which(data < min_val | data > max_val)
  cleaned_data <- data
  cleaned_data[violations] <- NA  # Replace violations with NA
  return(list(violations = violations, cleaned_data = cleaned_data))
}
