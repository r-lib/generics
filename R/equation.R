#' Model equations
#'
#' Display the mathematical representation of a fitted model.
#'
#' @param object A fitted model object.
#' @param ... Other arguments passed to methods
#'
#' @return Markup output suitable for rendering the equation.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("equation")}
#'
#' @export
equation <- function(object, ...) {
  UseMethod("equation")
}
