#' Perform Principal Component Analysis (PCA)
#'
#' This function performs Principal Component Analysis (PCA) on a numeric matrix or data frame.
#' @param data A numeric matrix or data frame.
#' @return A list with the following elements:
#' \item{principal_components}{A matrix of principal components.}
#' \item{explained_variance}{Proportion of variance explained by each principal component.}
#' \item{loadings}{Matrix of variable loadings (eigenvectors).}
#' @examples
#' # Perform PCA on selected columns of the mtcars dataset
#' result <- perform_pca(mtcars[c("disp", "hp", "wt")])
#' print(result$principal_components)
#' print(result$explained_variance)
#' print(result$loadings)
#' @export
perform_pca <- function(data) {
  if (!is.numeric(as.matrix(data))) stop("The input data must be numeric.")

  pca_result <- prcomp(data, scale. = TRUE)
  result <- list(
    principal_components = pca_result$x,
    explained_variance = summary(pca_result)$importance[2, ],
    loadings = pca_result$rotation
  )
  return(result)
}
