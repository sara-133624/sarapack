#' Mean Imputation
#'
#' This function replaces missing values in a column with the mean of that column.
#' @param data A data frame containing the data.
#' @param col_name The name of the column (as a string) to perform mean imputation on.
#' @return A data frame with missing values in the specified column replaced by the mean.
#' @examples
#' data <- data.frame(x = c(1, 2, NA, 4, 5))
#' mean_imputation(data, "x")
#' @export
mean_imputation <- function(data, col_name) {
  data[[col_name]][is.na(data[[col_name]])] <- mean(data[[col_name]], na.rm = TRUE)
  return(data)
}
