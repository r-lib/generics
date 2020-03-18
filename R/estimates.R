#' Estimates
#'
#' @param x An object.
#' @param ... Other arguments passed to methods.
#' @return An list of uniquely named numeric atomic objects.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("generate")}
#'
#' @export
estimates <- function(x, ...) {
  UseMethod("estimates")
}
