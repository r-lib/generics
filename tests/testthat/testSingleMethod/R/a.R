#' Generic test
#'
#'
#' @param x A parameter
#'
#' @rdname single-method
#'
#' @export
single_method <- function(x) {
  UseMethod("single_method")
}

#' Test default
#'
#' @param x A parameter
#'
#' @rdname single-method-2
#'
#' @export
single_method.default <- function(x) {
  x
}
