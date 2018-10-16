#' Find any arguments that are not fully specified.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("varying_args")}
#'
#' @inheritParams compile
#' @export
varying_args <- function(object, ...) {
  UseMethod("varying_args")
}
