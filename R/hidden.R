# Internal generic used for testing purposes

#' Generic test
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("generic_test")}
#'
#' @param x A parameter
#'
#' @rdname generic-test
#'
generic_test <- function(x) {
  UseMethod("generic_test")
}

#' Test default
#'
#' @param x A parameter
#'
#' @rdname generic-test-2
generic_test.default <- function(x) {
  x
}
