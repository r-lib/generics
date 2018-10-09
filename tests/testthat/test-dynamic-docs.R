context("test-dynamic-docs")

library(pkgload)
library(testthat)

# Setup ------------------------------------------------------------------------

# Load package and register methods
load_all("testS3Docs")

# Unload when finished testing
teardown({
  unload("testS3Docs")
})

# Testing ----------------------------------------------------------------------

test_that("Equivalent rd", {
  expect_equal(
    methods_rd("generic_test"),
    "See the following help topics for more details about individual methods:\n\n\\code{testS3Docs}\n\\itemize{\n\\item \\code{\\link[testS3Docs]{generic-test-2}}: \\code{default}\n}"
  )
})

test_that("No methods", {
  expect_equal(
    methods_rd("methods_rd"),
    "No methods found in currently loaded packages."
  )
})

test_that("Nonexistant function", {
  expect_error(generics:::methods_rd("xyz"))
})
