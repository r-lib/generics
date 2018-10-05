#' Evaluate an object.
#'
#' @param x An object. See the individual method for specifics.
#' @param ... other arguments passed to methods
#' 
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("evaluate")}
#'
#' @inheritParams augment
#' @export
evaluate <- function(x, ...) {
  UseMethod("evaluate")
}
