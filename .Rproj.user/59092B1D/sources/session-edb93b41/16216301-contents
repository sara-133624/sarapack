test_that("identify_duplicates detects duplicates correctly", {
  data <- data.frame(a = c(1, 2, 2), b = c(3, 4, 4))
  result <- identify_duplicates(data)
  expect_equal(result, c(FALSE, FALSE, TRUE)) # Check if third row is duplicate
})
