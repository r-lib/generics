#' Compute relative rankings of a collection of objects
#'
#' `rank_results()` computes relative ranks of a collection of objects and
#' returns a summary of the results.
#'
#' @param x A collection of objects
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("rank_results")}
#'
#' @export
rank_results <- function(x, ...) {
  UseMethod("rank_results")
}
