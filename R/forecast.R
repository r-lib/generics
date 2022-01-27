#' Forecasting from an object
#'
#' The functions allow producing forecasts based on the provided object.
#'
#' @param object A model for which forecasts are required.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("forecast")}
#'
#' @export
forecast <- function(object, ...) {
  UseMethod("forecast")
}
