#' Factor coercion
#'
#' Coercion functions for creating factors from other existing objects.
#'
#' These functions override non-generic factor coercion functions provided
#' in base so that packages can provide methods for different data types. The
#' default methods call the base versions.
#'
#' @section Methods:
#'
#' \subsection{`as.factor()`}{
#'    \Sexpr[stage=render,results=rd]{generics:::methods_rd("as.factor")}
#' }
#'
#' \subsection{`as.ordered()`}{
#'    \Sexpr[stage=render,results=rd]{generics:::methods_rd("as.ordered")}
#' }
#'
#'
#' @param x A vector of data.
#' @param ... Other arguments passed on to methods.
#' @return For `as.factor()`, a factor. For `as.ordered()`,
#' an ordered factor.
#'
#' @name coercion-factor
#'
#' @examples
#' as.factor(letters[1:5])
#' as.ordered(letters[1:5])
#'
NULL

#' @rdname coercion-factor
#' @export
as.factor <- function(x, ...) UseMethod("as.factor")

#' @rdname coercion-factor
#' @export
as.ordered <- function(x, ...) UseMethod("as.ordered")


#' @export
as.factor.default <- function(x, ...) base::as.factor(x)

#' @export
as.ordered.default <- function(x, ...) base::as.ordered(x)


#' Time difference coercion
#'
#' Coercion functions for creating `difftime` objects from other
#' existing objects.
#'
#' This function overrides the non-generic `as.difftime()` function
#' provided in base so that packages can provide methods for different data
#' types. The default method call the base version.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("as.difftime")}
#'
#' @param tim A vector specifying a time interval.
#' @param format A single character specifying the format of `tim` when it is
#' a character. The default is a locale-specific time format.
#' @param units A single character specifying units in which the results are
#' desired. Required if `tim` is a numeric.
#' @param ... Other arguments passed on to methods.
#' @return A `difftime` object with an attribute indicating the units.
#'
#' @name coercion-time-difference
#'
#' @examples
#' as.difftime(1:5, units = "secs")
#'
#' as.difftime(c("01:55:22", "01:55:25"))
#'
#' as.difftime("01", format = "%H")
#' as.difftime("01", format = "%H", units = "secs")
#'
NULL

#' @rdname coercion-time-difference
#' @export
as.difftime <- function(tim, ...) UseMethod("as.difftime")


#' @rdname coercion-time-difference
#' @export
as.difftime.default <- function(tim, format = "%X", units = "auto", ...)
  base::as.difftime(tim = tim, format = format, units = units, ...)
