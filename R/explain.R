#' Explain details of an object
#'
#' @param x An object. See the individual method for specifics.
#' @param ... other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("explain")}
#'
#' @inheritParams augment
#' @export
explain <- function(x, ...) {
  UseMethod("explain")
}
