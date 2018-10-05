#' Estimate model parameters. 
#' 
#' Estimates parameters for a given model from a set of data. 
#' 
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("fit")}
#'
#' @inheritParams compile
#' @export
fit <- function(object, ...) {
  UseMethod("fit")
}
