context("test-single-package")

library(pkgload)
library(testthat)

# Setup ------------------------------------------------------------------------

# Load package and register methods
load_all("testSingleMethod")
load_all("testMultiMethod")

# Unload when finished testing
teardown({
  unload("testSingleMethod")
  unload("testMultiMethod")
})

# Testing ----------------------------------------------------------------------

test_that("single method is correctly itemized", {
  expect_known_cat(
    methods_rd("single_method"),
    "testSingleMethod/test-1.txt"
  )
})

test_that("multiple methods are correctly itemized", {
  expect_known_cat(
    methods_rd("multi_method"),
    "testMultiMethod/test-1.txt"
  )
})
