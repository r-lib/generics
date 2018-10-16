#' Visualize a data set or object.
#'
#' @param x A data frame or other object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("visualize")}
#'
#' @export
visualize <- function(x, ...) {
  UseMethod("visualize")
}

