#' Extracting the estimating functions of a fitted model.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("estfun")}
#'
#' @param x A fitted model object.
#' @param ... Other arguments passed to methods
#' @export
estfun <- function(x, ...) {
  UseMethod("estfun")
}
