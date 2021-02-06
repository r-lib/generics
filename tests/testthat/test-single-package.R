test_that("single method is correctly itemized", {
  local_load_all("testSingleMethod")
  expect_snapshot(methods_rd("single_method"))
})

test_that("multiple methods are correctly itemized", {
  local_load_all("testMultiMethod")
  expect_snapshot(methods_rd("multi_method"))
})
