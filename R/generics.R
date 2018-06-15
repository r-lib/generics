#' Generic Functions Related to Modeling
#'
#' These are generic functions that can be used to minimize
#' package dependencies when multiple packages have the same
#' method.
#'
#' @param object,x An object.
#' @param ... Additional arguments to pass to other funcitons.
#' @examples
#' fit
#'
#' train
#' @export
#' @rdname generics
fit <- function (object, ...)
  UseMethod("fit")

#' @export
#' @rdname generics
var_imp <- function (object, ...)
  UseMethod("var_imp")

#' @export
#' @rdname generics
train <- function (x, ...)
  UseMethod("train")

#' @export
#' @rdname generics
learn <- function (x, ...)
  UseMethod("learn")

#' @export
#' @rdname generics
evaluate <- function (x, ...)
  UseMethod("evaluate")
