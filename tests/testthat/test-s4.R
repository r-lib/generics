context("test-s4")

library(pkgload)
library(testthat)

# Setup ------------------------------------------------------------------------

# Load package and register methods
load_all("testS4Docs")

# Unload when finished testing
teardown({
  unload("testS4Docs")
})

# Testing ----------------------------------------------------------------------

test_that("S4 bullets print with no issues", {

  skip_if_below_r_version("3.2")

  expect_known_cat(
    methods_rd("multi_method"),
    "testS4Docs/test-1.txt"
  )
})


# Load package and register methods
load_all("testMultiMethod")

# Unload when finished testing
teardown({
  unload("testMultiMethod")
})

test_that("S4 and S3 packages can intermingle", {

  skip_if_below_r_version("3.2")

  expect_known_cat(
    methods_rd("multi_method"),
    "testS4Docs/test-2.txt"
  )
})
