#' Extract components
#'
#' `components` can be used to extract elements from an object.
#'
#' For example, decomposition methods and some modelling techniques can be used
#' to decompose a dataset into components of interest. This function is used
#' to extract these components in a tidy data format.
#'
#' @param object A data separable object.
#' @param ... Other arguments passed to methods
#'
#' @return A dataset ([tibble::tibble()] or similar) containing components from
#' the object.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("components")}
#'
#' @export
components <- function(object, ...) {
  UseMethod("components")
}
