#' Glance at an object
#'
#' Construct a single row summary "glance" of a model, fit, or other
#' object
#'
#' glance methods always return either a one-row data frame (except on
#'  `NULL`, which returns an empty data frame)
#'
#' @param x model or other R object to convert to single-row data frame
#' @param ... other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("glance")}
#'
#' @export
glance <- function(x, ...) {
  UseMethod("glance")
}
