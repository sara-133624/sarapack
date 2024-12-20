test_that("iqr_outliers identifies outliers correctly", {
  data <- c(10, 12, 15, 100, 13)
  result <- iqr_outliers(data)
  expect_equal(result$outliers, c(100)) # Check if 100 is identified as an outlier
})

