test_that("generics methods can be reexported and extended", {
  local_load_all("testGenericsExtension")
  expect_snapshot(methods_rd("tidy"))
})

test_that("multiple packages have multiple headers", {
  local_load_all("testMultiMethod")
  local_load_all("testMultiPackage")
  expect_snapshot(methods_rd("multi_method"))
})

test_that("S4 bullets print with no issues", {
  local_load_all("testS4Docs")

  expect_snapshot(methods_rd("multi_method"))
})

test_that("S4 and S3 packages can intermingle", {
  local_load_all("testS4Docs")
  local_load_all("testMultiMethod")

  expect_snapshot(methods_rd("multi_method"))
})

test_that("multiple methods but same rdname are comma separated", {
  local_load_all("testSameRd")
  expect_snapshot(methods_rd("same_rd_name"))
})

test_that("single method is correctly itemized", {
  local_load_all("testSingleMethod")
  expect_snapshot(methods_rd("single_method"))
})

test_that("multiple methods are correctly itemized", {
  local_load_all("testMultiMethod")
  expect_snapshot(methods_rd("multi_method"))
})

test_that("no methods case returns default output", {
  expect_equal(
    methods_rd("methods_rd"),
    "No methods found in currently loaded packages."
  )
})

test_that("nonexistant generic is an error", {
  expect_error(methods_rd("xyz"))
})
