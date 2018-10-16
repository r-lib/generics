#' Specify variables or other quantities.
#'
#' @param x An object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("specify")}
#'
#' @export
specify <- function(x, ...) {
  UseMethod("specify")
}

