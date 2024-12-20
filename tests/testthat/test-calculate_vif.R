test_that("calculate_vif computes correctly", {
  model <- lm(mpg ~ disp + hp + wt, data = mtcars)
  result <- calculate_vif(model)
  expect_true(all(result > 1)) # VIF should be > 1 for predictors
})
