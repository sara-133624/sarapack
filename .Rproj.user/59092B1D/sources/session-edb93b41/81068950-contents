#' Variance Inflation Factor (VIF) Calculation
#'
#' This function calculates the VIF for each predictor variable in a linear model.
#' @param model A fitted linear model (object of class `lm`).
#' @return A named vector of VIF values for each predictor variable.
#' @examples
#' model <- lm(mpg ~ disp + hp + wt, data = mtcars)
#' calculate_vif(model)
#' @export
calculate_vif <- function(model) {
  if (!inherits(model, "lm")) stop("The input must be a linear model (class 'lm').")

  vif_values <- NULL
  for (i in names(coef(model))[-1]) {  # Skip the intercept
    formula_i <- as.formula(paste(i, "~ ."))
    model_i <- lm(formula_i, data = model$model)
    r_squared <- summary(model_i)$r.squared
    vif_values[i] <- 1 / (1 - r_squared)
  }
  return(vif_values)
}


