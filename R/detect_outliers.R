#' Detect Outliers for Typos
#'
#' This function identifies potential typos in numeric data using the Z-Score method.
#' @param data A numeric vector to check for outliers.
#' @param threshold The Z-Score threshold for identifying typos. Default is 3.
#' @return A list containing the indices of potential typos and a cleaned vector.
#' @examples
#' detect_outliers(c(10, 12, 15, 100, 13), threshold = 2)
#' @export

# Updated function to detect outliers
detect_outliers <- function(data, threshold = 3) {
  # Validate input data
  if (!is.numeric(data)) {
    stop("Input data must be numeric.")  # Error if data is not numeric
  }
  if (length(data) < 2) {
    stop("Data must contain at least two elements.")  # Error if data has fewer than two elements
  }

  # Calculate Z-scores
  mean_val <- mean(data, na.rm = TRUE)  # Calculate the mean, ignoring NA values
  sd_val <- sd(data, na.rm = TRUE)      # Calculate the standard deviation, ignoring NA values

  if (sd_val == 0) {
    warning("Standard deviation is zero; no outliers can be detected.")  # Warning if data has no variance
    return(list(outliers = integer(0), values = numeric(0)))  # Return empty result
  }

  z_scores <- (data - mean_val) / sd_val  # Compute Z-scores for the data

  # Identify outliers
  outlier_indices <- which(abs(z_scores) > threshold)  # Indices of outliers
  outlier_values <- data[outlier_indices]             # Values of the outliers

  # Return results
  return(list(outliers = outlier_indices, values = outlier_values))  # Return indices and values of outliers
}


