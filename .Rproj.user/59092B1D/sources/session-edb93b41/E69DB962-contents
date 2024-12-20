#' Ordinal Encoding Function
#'
#' This function performs ordinal encoding on a categorical vector by mapping categories to integers.
#' @param data A data frame containing the categorical variable.
#' @param col_name The name of the column (as a string) to perform ordinal encoding on.
#' @return A data frame with ordinal encoded values replacing the original column.
#' @examples
#' ordinal_encode(data.frame(category = c("Low", "Medium", "High")), "category")
#' @export
ordinal_encode <- function(data, col_name) {
  if (!is.factor(data[[col_name]]) && !is.character(data[[col_name]])) {
    stop("The column must be a factor or character type for ordinal encoding.")
  }
  data[[col_name]] <- as.numeric(factor(data[[col_name]], levels = unique(data[[col_name]])))
  return(data)
}
