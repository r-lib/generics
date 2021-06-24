#' Create an interactive visualization appropriate to a particular object type
#'
#' `explore()` invokes a function that starts an interactive, pre-defined widget
#' (e.g. `plotly` visualization, `shiny` app, etc.) to investigate the results.
#'
#' @param x A object
#' @param ... Other arguments passed to methods
#'
#' @return `NULL` (invisibly) or some other data type (e.g. tibble) depending on
#' the application.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("explore")}
#'
#' @export
explore <- function(x, ...) {
  UseMethod("explore")
}
