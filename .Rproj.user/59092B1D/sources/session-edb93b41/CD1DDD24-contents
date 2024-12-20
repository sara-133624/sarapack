test_that("standardize scales correctly", {
  data <- c(10, 20, 30, 40, 50)
  result <- standardize(data)
  expect_equal(mean(result, na.rm = TRUE), 0, tolerance = 1e-8) # Mean should be ~0
  expect_equal(sd(result, na.rm = TRUE), 1, tolerance = 1e-8)   # SD should be ~1
})

