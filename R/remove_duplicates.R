#' Remove Duplicates
#'
#' This function removes duplicate rows from a data frame.
#' @param data A data frame to remove duplicates from.
#' @return A data frame with duplicates removed.
#' @examples
#' remove_duplicates(data.frame(a = c(1, 2, 2), b = c(3, 4, 4)))
#' @export
remove_duplicates <- function(data) {
  if (!is.data.frame(data)) stop("Input data must be a data frame.")
  return(data[!duplicated(data), ])
}
