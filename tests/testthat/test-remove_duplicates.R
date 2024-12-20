test_that("remove_duplicates removes duplicates correctly", {
  data <- data.frame(a = c(1, 2, 2), b = c(3, 4, 4))
  result <- remove_duplicates(data)
  expect_equal(nrow(result), 2) # Check if only unique rows remain
})
