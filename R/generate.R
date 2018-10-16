#' Generate values based on inputs
#' @param x An object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("generate")}
#'
#' @export
generate <- function(x, ...) {
  UseMethod("generate")
}


