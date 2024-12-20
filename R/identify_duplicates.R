#' Identify Duplicates
#'
#' This function identifies duplicate rows in a data frame.
#' @param data A data frame to check for duplicates.
#' @return A logical vector indicating whether each row is a duplicate (TRUE for duplicates).
#' @examples
#' identify_duplicates(data.frame(a = c(1, 2, 2), b = c(3, 4, 4)))
#' @export
identify_duplicates <- function(data) {
  if (!is.data.frame(data)) stop("Input data must be a data frame.")
  return(duplicated(data))
}
