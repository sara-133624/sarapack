#' Weighted Loss Function
#'
#' This function calculates a weighted loss for a classification problem.
#' @param y_true A vector of true class labels.
#' @param y_pred A vector of predicted probabilities for the positive class.
#' @param class_weights A vector of weights for each class.
#' @return The weighted loss value.
#' @examples
#' weighted_loss(c(1, 0, 1), c(0.9, 0.2, 0.7), c(0.3, 0.7))
#' @export
weighted_loss <- function(y_true, y_pred, class_weights) {
  if (length(y_true) != length(y_pred)) stop("y_true and y_pred must have the same length.")
  if (length(unique(y_true)) != length(class_weights)) stop("Class weights must match the number of unique classes.")

  loss <- -sum(class_weights[y_true + 1] * (y_true * log(y_pred) + (1 - y_true) * log(1 - y_pred)))
  return(loss)
}
