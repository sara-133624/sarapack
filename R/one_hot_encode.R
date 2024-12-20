#' One-Hot Encoding Function
#'
#' This function performs one-hot encoding on a categorical vector, converting it to binary columns.
#' @param data A data frame containing the categorical variable.
#' @param col_name The name of the column (as a string) to perform one-hot encoding on.
#' @return A data frame with one-hot encoded columns replacing the original column.
#' @examples
#' one_hot_encode(data.frame(category = c("A", "B", "A", "C")), "category")
#' @export
one_hot_encode <- function(data, col_name) {
  if (!is.factor(data[[col_name]]) && !is.character(data[[col_name]])) {
    stop("The column must be a factor or character type for one-hot encoding.")
  }
  data[[col_name]] <- as.factor(data[[col_name]])
  encoded_data <- model.matrix(~ . - 1, data = data.frame(data[[col_name]]))
  colnames(encoded_data) <- paste(col_name, levels(data[[col_name]]), sep = "_")
  data <- cbind(data, encoded_data)
  data[[col_name]] <- NULL
  return(data)
}
