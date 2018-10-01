context("test-dynamic-docs")

# Create the generic
generic_test <- generics:::generic_test

# Register the S3 method
registerS3method("generic_test", "default", generics:::generic_test.default)

# Get these tests to pass with a R CMD Check call
# They do not pass interactively with devtools::test() because it uses
# load_all() and utils::help() can't find the help docs

# When using devtools::load_all(), these show up automatically but the help docs
# are not found. When you install the package (like how CRAN will run the tests), you have
# to register them manually but the documentation is already there for linking
# against

# # Example to demonstrate the problem:
#
# # Devtools perspective
# devtools::load_all(".")
# utils::methods("generic_test")
# # [1] generic_test.default
# utils::help("generic_test.default")
# # No documentation for ‘generic_test.default’...
#
# # Installed package perspective
# library(generics)
# utils::methods("generic_test")
# # Error in .S3methods(generic.function, class, parent.frame()) :
# #  no function 'generic_test' is visible
# as.character(utils::help("generic_test.default"))
# # [1] "/Library/Frameworks/R.framework/Versions/3.5/Resources/library/generics/help/generic-test-2"

test_that("Equivalent rd", {
  expect_equal(
    generics:::methods_rd("generic_test"),
    "See the following help topics for more details about individual methods:\n\n\\code{generics}\n\\itemize{\n\\item \\code{\\link[generics]{generic-test-2}}: \\code{default}\n}"
  )
})

test_that("No methods", {
  expect_equal(
    generics:::methods_rd("methods_rd"),
    "No methods found in currently loaded packages."
  )
})

test_that("Nonexistant function", {
  expect_error(generics:::methods_rd("xyz"))
})
