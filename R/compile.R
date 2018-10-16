#' Configure an object
#'
#' Finalizes or completes an object.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("compile")}
#'
#' @param object An object. See the individual method for specifics.
#' @param ... Other arguments passed to methods
#' @export
compile <- function(object, ...) {
  UseMethod("compile")
}
