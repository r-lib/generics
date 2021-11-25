#' Accuracy measures for a model
#'
#' Returns range of summary measures of the forecast accuracy.
#'
#' @param object A model for which forecasts are required.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("accuracy")}
#'
#' @export
accuracy <- function(object, ...) {
  UseMethod("accuracy")
}
