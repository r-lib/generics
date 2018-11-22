#' Augment data with information from an object
#'
#' @param x Model object or other R object with information to append to
#'   observations.
#' @param ... Addition arguments to `augment` method.
#' @return A [tibble::tibble()] with information about data points.
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("augment")}
#'
#' @export
#'
augment <- function(x, ...) {
  UseMethod("augment")
}
