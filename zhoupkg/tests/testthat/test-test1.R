
# tests summary:
# input is a numeric vector/integer
# output is a finite scalar

test_that("numeric input", {
  # the input should be numeric, or an integer
  expect_error(log_summed_exps(c("1", "2")))
})

test_that("numeric output", {
  # output is numeric/double
  expect_type(log_summed_exps(seq(1:2000)), "double")
})

test_that("scalar output", {
  # the output is a scalar instead of a vector
  expect_length(log_summed_exps(seq(1:2000)), 1)
})

test_that("finite output", {
  # the output should be finite
  expect_equal(is.finite(log_summed_exps(seq(1:200000))), TRUE)
})

