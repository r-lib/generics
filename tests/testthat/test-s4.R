test_that("S4 bullets print with no issues", {
  local_load_all("testS4Docs")
  skip_if_below_r_version("3.2")

  expect_snapshot(methods_rd("multi_method"))
})

test_that("S4 and S3 packages can intermingle", {
  local_load_all("testS4Docs")
  local_load_all("testMultiMethod")

  skip_if_below_r_version("3.2")

  expect_snapshot(methods_rd("multi_method"))
})
