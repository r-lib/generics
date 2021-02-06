test_that("multiple packages have multiple headers", {
  local_load_all("testMultiMethod")
  local_load_all("testMultiPackage")
  expect_snapshot(methods_rd("multi_method"))
})
