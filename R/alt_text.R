#' Alternative text generation
#'
#' Return a character string that summarizes an object. This can be used to
#' improve the accessibility by passing the results to visualization and
#' documentation functions (e.g. the `fig.alt` chunk option in Rmarkdown
#' documents).
#'
#' @param x A An object.
#' @param ... Other arguments passed to methods
#'
#' @return A character string.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("alt_text")}
#'
#' @export
alt_text <- function(x, ...) {
  UseMethod("alt_text")
}
