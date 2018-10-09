#' Generic test for multiple methods
#'
#'
#' @param x,y A parameter
#'
#' @rdname multi-method
#'
#' @export
multi_method <- function(x, y) {
  UseMethod("multi_method")
}

#' Test default
#'
#' @param x,y A parameter
#'
#' @rdname multi-method-2
#'
#' @export
multi_method.default <- function(x, y) {
  x
}

#' Test data frame
#'
#' @param x,y A parameter
#'
#' @rdname multi-method-3
#'
#' @export
multi_method.data.frame <- function(x, y) {
  x
}
