context("test-same-rd")

library(pkgload)
library(testthat)

# Setup ------------------------------------------------------------------------

# Load package and register methods
load_all("testSameRd")

# Unload when finished testing
teardown({
  unload("testSameRd")
})

# Testing ----------------------------------------------------------------------

test_that("multiple methods but same rdname are comma separated", {
  expect_known_cat(
    methods_rd("same_rd_name"),
    "testSameRd/test-1.txt"
  )
})
