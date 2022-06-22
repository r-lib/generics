#' Show relative rankings of different items
#'
#' The functions returns a summary that provides relative ranks of different
#' items in a collection.
#'
#' @param x An object that represents a collection of items.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("rank_results")}
#'
#' @export
rank_results <- function(x, ...) {
  UseMethod("rank_results")
}
