#' Set operations
#'
#' Union (`union()`), intersect (`intersect()`), difference (`setdiff()`),
#' and equality (`setequal()`) for two vectors representing sets. Determine
#' membership with `is.element()`.
#'
#' These functions override the set functions provided in base to make them
#' generic so that packages can provide methods for different data types. The
#' default methods call the base versions.
#'
#' @section Methods:
#'
#' \subsection{`intersect()`}{
#'     \Sexpr[stage=render,results=rd]{generics:::methods_rd("intersect")}
#' }
#'
#' \subsection{`union()`}{
#'    \Sexpr[stage=render,results=rd]{generics:::methods_rd("union")}
#' }
#'
#' \subsection{`setdiff()`}{
#'    \Sexpr[stage=render,results=rd]{generics:::methods_rd("setdiff")}
#' }
#'
#' \subsection{`setequal()`}{
#'    \Sexpr[stage=render,results=rd]{generics:::methods_rd("setequal")}
#' }
#'
#' \subsection{`is.element()`}{
#'    \Sexpr[stage=render,results=rd]{generics:::methods_rd("is.element")}
#' }
#'
#' @param x,y Vectors to combine.
#' @param el,set Element and set to compare.
#' @param ... Other arguments passed on to methods.
#' @return For `union()`, `intersect()`, and `setdiff()`, a vector with all
#'   duplicate removed.
#'
#'   For `setequal()` and `is.element()`,  a logical `TRUE` or `FALSE`.`
#' @name setops
#' @examples
#' intersect(1:5, 4:8)
#' union(1:5, 4:8)
#'
#' setdiff(1:5, 4:8)
#' setdiff(4:8, 1:5)
NULL

#' @rdname setops
#' @export
intersect <- function(x, y, ...) UseMethod("intersect")
#' @rdname setops
#' @export
union <- function(x, y, ...) UseMethod("union")
#' @rdname setops
#' @export
setdiff <- function(x, y, ...) UseMethod("setdiff")
#' @rdname setops
#' @export
setequal <- function(x, y, ...) UseMethod("setequal")
#' @rdname setops
#' @export
is.element <- function(el, set, ...) UseMethod("is.element")

#' @export
intersect.default <- function(x, y, ...) base::intersect(x, y, ...)
#' @export
union.default <- function(x, y, ...) base::union(x, y, ...)
#' @export
setdiff.default <- function(x, y, ...) base::setdiff(x, y, ...)
#' @export
setequal.default <- function(x, y, ...) base::setequal(x, y, ...)
#' @export
is.element.default <- function(el, set, ...) base::is.element(el, set, ...)
