#' IQR Method for Detecting Outliers
#'
#' This function identifies outliers based on the Interquartile Range (IQR) method.
#' Outliers are defined as values outside the range calculated using Q1 and Q3 with a multiplier of 1.5.
#' @description The method detects outliers by identifying values that are below Q1 - 1.5 * IQR or above Q3 + 1.5 * IQR.
#' @param data A numeric vector containing the data.
#' @return A list containing the outliers and the cleaned data.
#' @examples
#' iqr_outliers(c(10, 12, 15, 100, 13))
#' @export
iqr_outliers <- function(data) {
  Q1 <- quantile(data, 0.25, na.rm = TRUE)
  Q3 <- quantile(data, 0.75, na.rm = TRUE)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  outliers <- data[data < lower_bound | data > upper_bound]
  cleaned_data <- data[data >= lower_bound & data <= upper_bound]
  return(list(outliers = outliers, cleaned_data = cleaned_data))
}
