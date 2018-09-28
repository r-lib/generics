#' augment
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("augment")}
#'
#' @param x An object. See the individual method for specifics.
#' @param ... Additional arguments to pass to other functions.
#' @export
augment <- function(x, ...) {
  UseMethod("augment")
}

#' compile
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("compile")}
#'
#' @inheritParams augment
#' @param object An object. See the individual method for specifics.
#' @export
compile <- function(object, ...) {
  UseMethod("compile")
}

#' estfun
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("estfun")}
#'
#' @inheritParams augment
#' @export
estfun <- function(x, ...) {
  UseMethod("estfun")
}

#' evaluate
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("evaluate")}
#'
#' @inheritParams augment
#' @export
evaluate <- function(x, ...) {
  UseMethod("evaluate")
}

#' explain
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("explain")}
#'
#' @inheritParams augment
#' @export
explain <- function(x, ...) {
  UseMethod("explain")
}

#' find_varying
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("find_varying")}
#'
#' @inheritParams compile
#' @export
find_varying <- function(object, ...) {
  UseMethod("find_varying")
}

#' fit
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("fit")}
#'
#' @inheritParams compile
#' @export
fit <- function(object, ...) {
  UseMethod("fit")
}

#' fit_xy
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("fit_xy")}
#'
#' @inheritParams compile
#' @export
fit_xy <- function(object, ...) {
  UseMethod("fit_xy")
}

#' glance
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("glance")}
#'
#' @inheritParams augment
#' @export
glance <- function(x, ...) {
  UseMethod("glance")
}

#' learn
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("learn")}
#'
#' @inheritParams augment
#' @export
learn <- function(x, ...) {
  UseMethod("learn")
}

#' prune
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("prune")}
#'
#' @inheritParams augment
#' @param tree A fitted model object.
#' @export
prune <- function(tree, ...) {
  UseMethod("prune")
}

#' refit
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("refit")}
#'
#' @inheritParams compile
#' @export
refit <- function(object, ...) {
  UseMethod("refit")
}

#' tidy
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("tidy")}
#'
#' @inheritParams augment
#' @export
tidy <- function(x, ...) {
  UseMethod("tidy")
}

#' train
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("train")}
#'
#' @inheritParams augment
#' @export
train <- function(x, ...) {
  UseMethod("train")
}

#' var_imp
#'
#' @section Methods:
#' \Sexpr[stage=render,results=Rd]{generics:::methods_rd("var_imp")}
#'
#' @inheritParams compile
#' @export
var_imp <- function(object, ...) {
  UseMethod("var_imp")
}


