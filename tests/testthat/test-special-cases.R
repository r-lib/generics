context("test-special-cases")

test_that("no methods case returns default output", {
  expect_equal(
    methods_rd("methods_rd"),
    "No methods found in currently loaded packages."
  )
})

test_that("nonexistant generic is an error", {
  expect_error(methods_rd("xyz"))
})
