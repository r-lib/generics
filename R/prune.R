#' Prune or reduce an object
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("prune")}
#'
#' @param tree A fitted model object.
#' @param ... Other arguments passed to methods
#' @export
prune <- function(tree, ...) {
  UseMethod("prune")
}
