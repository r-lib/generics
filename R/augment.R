#' Augment data with information from an object
#'
#' @param x Model object or other R object with information to append to
#'   observations.
#' @param data A [data.frame()] or [tibble::tibble()] containing the original
#'  data that was used to produce the object `x`.
#' @param ... Addition arguments to `augment` method.
#' @return A [tibble::tibble()] with information about data points.
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("augment")}
#'
#' @export
#'
augment <- function(x, data, ...) {
  UseMethod("augment")
}
