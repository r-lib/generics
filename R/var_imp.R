#' Calculation of variable importance
#'
#' A generic method for calculating variable importance for model objects.
#'
#' @param object A fitted model object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("var_imp")}
#'
#' @inheritParams compile
#' @export
var_imp <- function(object, ...) {
  UseMethod("var_imp")
}
