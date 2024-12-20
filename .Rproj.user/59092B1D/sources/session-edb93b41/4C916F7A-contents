test_that("mean_imputation works correctly", {
  data <- data.frame(x = c(1, 2, NA, 4, 5))
  result <- mean_imputation(data, "x")
  expect_equal(result$x, c(1, 2, 3, 4, 5)) # Check if NA replaced with mean
})
