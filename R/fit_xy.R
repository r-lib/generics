#' Estimate model parameters.
#'
#' Estimates parameters for a given model from a set of data in the form of
#'  a set of predictors (`x`) and outcome(s) (`y`).
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("fit_xy")}
#'
#' @inheritParams compile
#' @export
fit_xy <- function(object, ...) {
  UseMethod("fit_xy")
}
