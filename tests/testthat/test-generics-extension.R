context("test-generics-extension")

library(pkgload)
library(testthat)

# Setup ------------------------------------------------------------------------

# Load package and register methods
load_all("testGenericsExtension")

# Unload when finished testing
teardown({
  unload("testGenericsExtension")
})

# Testing ----------------------------------------------------------------------

test_that("generics methods can be reexported and extended", {
  expect_known_cat(
    methods_rd("tidy"),
    "testGenericsExtension/test-1.txt"
  )
})
