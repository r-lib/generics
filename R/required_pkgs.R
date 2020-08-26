#' Determine packages required by objects
#'
#' @param x An object.
#' @param ... Other arguments passed to methods
#' @return A character string of packages that are required.
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("required_pkgs")}
#' @export
required_pkgs <- function(x, ...) {
  UseMethod("required_pkgs")
}
