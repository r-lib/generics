#' Determine the minimum set of model fits
#'
#' `min_grid()` determines exactly what models should be fit in order to
#'  evaluate the entire set of tuning parameter combinations. This is for
#'  internal use only and the API may change in the near future.
#' @param x A model specification.
#' @param grid A tibble with tuning parameter combinations.
#' @param ... Not currently used.
#' @return A tibble with the minimum tuning parameters to fit and an additional
#' list column with the parameter combinations used for prediction.
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("min_grid")}
#' @export
min_grid <- function(x, grid, ...) {
  UseMethod("min_grid")
}
