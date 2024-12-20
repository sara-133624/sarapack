test_that("perform_pca works correctly", {
  data <- mtcars[c("disp", "hp", "wt")]
  result <- perform_pca(data)
  expect_true(is.matrix(result$principal_components))
  expect_true(is.numeric(result$explained_variance))
  expect_true(is.matrix(result$loadings))
})
