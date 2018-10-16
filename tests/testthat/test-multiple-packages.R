context("test-multiple-packages")

library(pkgload)
library(testthat)

# Setup ------------------------------------------------------------------------

# Load package and register methods
load_all("testMultiMethod")
load_all("testMultiPackage")

# Unload when finished testing
teardown({
  unload("testMultiMethod")
  unload("testMultiPackage")
})

# Testing ----------------------------------------------------------------------

test_that("multiple packages have multiple headers", {
  expect_known_cat(
    methods_rd("multi_method"),
    "testMultiPackage/test-1.txt"
  )
})
