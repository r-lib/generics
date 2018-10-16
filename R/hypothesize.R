#' Construct hypotheses.
#'
#' @param x An object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("hypothesize")}
#'
#' @export
hypothesize <- function(x, ...) {
  UseMethod("hypothesize")
}

