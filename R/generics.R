#' Generic functions related to modeling
#'
#' These are generic functions that can be used to minimize
#'  package dependencies when multiple packages have the same
#'  method.
#'
#' An attempt was made to use generic class signatures that were
#'  consistent with existing code. For example, \pkg{dplyr} and
#'  \pkg{lime} both have `explain` methods that do very different
#'  things but both take `x` as their main object. Even though `x`
#'  would be different in those cases, this package provides access
#'  to the S3 generic so that other packages that may want to create
#'  `explain` methods for their objects can do so without loading
#'  either of the other packages.
#' 
#' For example, if a new `tidy` method is being developed for a
#'  package, this lightweight package can be the required dependency
#'  to have access to the generic method (instead of depending on
#'  \pkg{broom} and installing its dependencies).
#'  
#' Known functions related to modeling (which may or may not be 
#'  consistent with the definitions in this package) include:
#' 
#' * `augment`: \pkg{broom}
#' * `compile`: \pkg{keras}, \pkg{tensorflow}
#' * `estfun`: \pkg{sandwich}, \pkg{ssym}, \pkg{gmm}, \pkg{maxLik}, 
#'   \pkg{psychotools}, \pkg{drc}, and others
#' * `evaluate`: \pkg{keras}, \pkg{tensorflow}, \pkg{healthcareai}
#' * `explain`: \pkg{dplyr}, \pkg{lime}, \pkg{DALEX}
#' * `fit`: \pkg{keras}
#' * `glance`: \pkg{broom}
#' * `learn`: \pkg{grnn}, \pkg{pnn}
#' * `prune`: \pkg{rpart}, \pkg{dendextend}
#' * `refit`: \pkg{modeltools}, \pkg{lmSubsets}, \pkg{partykit}, 
#'  \pkg{glogis}, \pkg{fxregime}, and others. 
#' * `tidy`: \pkg{broom}, \pkg{estimatr}, \pkg{radiant.data}, 
#'  \pkg{permutations}, and others. 
#' * `train`: \pkg{caret}, \pkg{tensorflow}, \pkg{mlr}, \pkg{RSNNS},
#'  \pkg{Information}, and others. 
#' * `var_imp`: \pkg{datafsm}
#'
#'  
#' It is suggested that, if a package uses \pkg{modelgenerics}, it
#'  do so by _importing_ the package and re-exporting the method
#'  of interest. For example, if the `explain` method were being
#'  used, the roxygen2 code to do this would be 
#'  
#'  \preformatted{
#'     #' @importFrom modelgenerics explain
#'     #' @export
#'     modelgenerics::explain
#' }
#' 
#' This will help avoid collisions with methods contained in 
#'  this package and others. 
#'  
#' @param object,x An object. See Details below. 
#' @param tree A fitted model object.
#' @param ... Additional arguments to pass to other functions.
#' @examples
#' fit
#'
#' tidy
#' 

#' @export
#' @rdname generics
augment <- function(x, ...) {
  UseMethod("augment")
}

#' @export
#' @rdname generics
compile <- function (object, ...) {
  UseMethod("compile")
}

#' @export
#' @rdname generics
estfun <- function (x, ...) {
  UseMethod("estfun")
}

#' @export
#' @rdname generics
evaluate <- function (x, ...) {
  UseMethod("evaluate")
}

#' @export
#' @rdname generics
explain <- function (x, ...) {
  UseMethod("explain")
}

#' @export
#' @rdname generics
fit <- function (object, ...) {
  UseMethod("fit")
}

#' @export
#' @rdname generics
glance <- function(x, ...) {
  UseMethod("glance")
}

#' @export
#' @rdname generics
learn <- function (x, ...) {
  UseMethod("learn")
}

#' @export
#' @rdname generics
prune <- function (tree, ...) {
  UseMethod("prune")
}

#' @export
#' @rdname generics
refit <- function (object, ...) {
  UseMethod("refit")
}

#' @export
#' @rdname generics
tidy <- function (x, ...) {
  UseMethod("tidy")
}

#' @export
#' @rdname generics
train <- function (x, ...) {
  UseMethod("train")
}

#' @export
#' @rdname generics
var_imp <- function (object, ...) {
  UseMethod("var_imp")
}


