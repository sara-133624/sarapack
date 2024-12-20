#' Retain Duplicates
#'
#' This function retains only the duplicate rows in a data frame.
#' @param data A data frame to extract duplicates from.
#' @return A data frame containing only duplicate rows.
#' @examples
#' retain_duplicates(data.frame(a = c(1, 2, 2), b = c(3, 4, 4)))
#' @export
retain_duplicates <- function(data) {
  if (!is.data.frame(data)) stop("Input data must be a data frame.")
  return(data[duplicated(data) | duplicated(data, fromLast = TRUE), ])
}
