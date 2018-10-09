expect_known_cat <- function(object, file, update = FALSE) {
  testthat::expect_output_file(cat(object), file, update = update, print = TRUE)
}
