#' Model equations
#'
#' Display the mathematical representation of a fitted model.
#'
#' @param object A fitted model object.
#' @param ... Other arguments passed to methods
#'
#' @return LaTeX output suitable for usage within R Markdown documents.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("equation")}
#'
#' @export
equation <- function(object, ...) {
  UseMethod("equation")
}
