#' Visualize a data set or object. 
#' 
#' @param data A data frame or other object. 
#' @param ... Other arguments passed to methods
#' 
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("visualize")}
#'
#' @export
visualize <- function(data, ...) {
  UseMethod("visualize")
}

