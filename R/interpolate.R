#' Interpolate missing values
#'
#' Interpolates missing values provided in the training dataset using the
#' fitted model.
#'
#' @param object A fitted model object
#' @param ... Other arguments passed to methods
#'
#' @return A dataset ([tibble::tibble()] or similar) of the same structure as
#' the input dataset with missing values from the response variable replaced
#' with interpolated values.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("interpolate")}
#'
#' @export
interpolate <- function(object, ...) {
  UseMethod("interpolate")
}
