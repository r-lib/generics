#' Refitting models
#'
#' @param object A fitted model object.
#' @param ... Other arguments passed to methods
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("refit")}
#'
#' @export
refit <- function(object, ...) {
  UseMethod("refit")
}
