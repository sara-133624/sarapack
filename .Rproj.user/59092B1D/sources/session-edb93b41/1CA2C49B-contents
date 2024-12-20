test_that("one_hot_encode works correctly", {
  data <- data.frame(category = c("A", "B", "A", "C"))
  result <- one_hot_encode(data, "category")
  expect_true(all(c("category_A", "category_B", "category_C") %in% colnames(result)))
})
