test_that("normalize function works correctly", {
  # Test with a non-numeric input
  expect_error(normalize(c("a", "b", "c")), regexp = "Input data must be numeric.")
})
test_that("normalize handles empty input", {
  expect_error(normalize(numeric(0)), regexp = "Input data is empty.")
})
test_that("normalize handles NA values", {
  result <- normalize(c(1, 2, NA, 4))
  expect_equal(result, c(0, 1/3, NA, 1))
})
test_that("normalize handles identical values", {
  result <- normalize(c(5, 5, 5, 5))
  expect_equal(result, c(0, 0, 0, 0))
})

