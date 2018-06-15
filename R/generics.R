#' Generic Functions Related to Modeling
#'
#' These are generic functions that can be used to minimize
#' package dependencies when multiple packages have the same
#' method.
#'
#' For example, if a new `tidy` method is being developed for a package, this
#'  lightweight package can be the required dependency to have access to the
#'  generic method (instead of depending on `broom` and installing its
#'  dependencies).
#'
#' @param object,x An object.
#' @param data A data set in a data frame or tibble.
#' @param tree A fitted model object.
#' @param ... Additional arguments to pass to other functions.
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

#' @export
#' @rdname generics
prune <- function (tree, ...)
  UseMethod("prune")

### generics used by broom

#' @export
#' @rdname generics
tidy <- function (x, ...)
  UseMethod("tidy")

#' @export
#' @rdname generics
glance <- function(x, ...)
  UseMethod("glance")

#' @export
#' @rdname generics
augment <- function(x, data, ...)
  UseMethod("augment")


