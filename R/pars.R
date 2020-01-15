#' Parameter Names
#'
#' Gets the parameter names for a model or analysis object.
#'
#' @param x A model or analysis object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("pars")}
#'
#' @export
pars <- function(x, ...) {
  UseMethod("pars")
}
