#' Turn an object into a tidy tibble
#'
#' @param x An object to be converted into a tidy [tibble::tibble()].
#' @param ... Additional arguments to tidying method.
#' @return A [tibble::tibble()] with information about model components.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("tidy")}
#'
#' @export
tidy <- function(x, ...) {
  UseMethod("tidy")
}
