#' Coercion
#'
#' Coercion functions (`as.*()`) for creating various classes from other
#' existing objects.
#'
#' These functions override non-generic coercion functions provided in base
#' so that packages can provide methods for different data types. The
#' default methods call the base versions.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("as.factor")}
#'
#' @param x A vector of data.
#' @param tim A vector specifying a time interval.
#' @param format A single character specifying the format of `tim` when it is
#' a character. The default is a locale-specific time format.
#' @param units A single character specifying units in which the results are
#' desired. Required if `tim` is a numeric.
#' @param ... Other arguments passed on to methods.
#' @return
#'   For `as.factor()` and `as.ordered()`, a factor or ordered factor.
#'
#'   For `as.difftime()`, a difftime object with an attribute indicating the
#'   units.
#' @name coercion
#' @examples
#' as.factor(letters[1:5])
#' as.ordered(letters[1:5])
#'
#' as.difftime(1:5, units = "secs")
#' as.difftime(c("01:55:22", "01:55:25"))
#' as.difftime("01", format = "%H")
#' as.difftime("01", format = "%H", units = "secs")
#'
NULL

#' @rdname coercion
#' @export
as.factor <- function(x, ...) UseMethod("as.factor")

#' @rdname coercion
#' @export
as.ordered <- function(x, ...) UseMethod("as.ordered")

#' @rdname coercion
#' @export
as.difftime <- function(tim, ...) UseMethod("as.difftime")


#' @export
as.factor.default <- function(x, ...) base::as.factor(x)

#' @export
as.ordered.default <- function(x, ...) base::as.ordered(x)

#' @rdname coercion
#' @export
as.difftime.default <- function(tim, format = "%X", units = "auto", ...)
  base::as.difftime(tim = tim, format = format, units = units, ...)
