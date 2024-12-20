test_that("weighted_loss calculates correctly", {
  y_true <- c(1, 0, 1)
  y_pred <- c(0.9, 0.2, 0.7)
  class_weights <- c(0.3, 0.7)
  result <- weighted_loss(y_true, y_pred, class_weights)
  expect_true(result > 0) # Loss should be positive
})
