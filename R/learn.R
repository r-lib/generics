#' Estimate model parameters.
#'
#' Estimates parameters for a given model from a set of data.
#'
#' @param x An object. See the individual method for specifics.
#' @param ... other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("learn")}
#'
#' @inheritParams compile
#' @export
learn <- function(x, ...) {
  UseMethod("learn")
}
