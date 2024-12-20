test_that("range_check validates correctly", {
  data <- c(5, 10, 20, 50)
  result <- range_check(data, min_val = 10, max_val = 30)
  expect_equal(result$violations, c(1, 4)) # Check indices of violations
})
