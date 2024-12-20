test_that("ordinal_encode works correctly", {
  data <- data.frame(category = c("Low", "Medium", "High"))
  result <- ordinal_encode(data, "category")
  expect_equal(result$category, c(1, 2, 3)) # Check if encoding is correct
})
