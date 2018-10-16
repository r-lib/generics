#' Calculate statistics.
#' @param x An object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("calculate")}
#'
#' @export
calculate <- function(x, ...) {
  UseMethod("calculate")
}

