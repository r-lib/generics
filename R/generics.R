#' Generic Functions Related to Modeling
#'
#' These are generic functions that can be used to minimize
#' package dependencies when multiple packages have the same
#' method.
#'
#' An attempt was made to use S3 class signatures that were
#'  consistent with existing code. For example, \pkg{dplyr} and \pkg{lime}
#'  both have `explain` methods that do very different things but
#'  both take `x` as their main object. Even though `x` would be
#'  different in those cases, this package provides access to the S3
#'  generic so that other packages that may want to create `explain`
#'  methods for their objects can do so without loading either of
#'  the other packages.
#' 
#' For example, if a new `tidy` method is being developed for a package, this
#'  lightweight package can be the required dependency to have access to the
#'  generic method (instead of depending on \pkg{broom} and installing its
#'  dependencies).
#'  
#' In this package, snake case is preferred. The generics `varimp` and `varImp`
#'  are provided to maintain compatibility with existing packages (e.g. `party` 
#'  and `caret`). Both refer to the `var_imp` 
#'  
#' Known non-S4 functions related to modeling (which may or may not be 
#' consistent with the definitions in this package):
#' 
#' \itemize{
#' \item `augment`: \pkg{broom}
#' \item `compile`: \pkg{keras}, \pkg{tensorflow}
#' \item `estfun`: \pkg{sandwich}, \pkg{ssym}, \pkg{gmm}, \pkg{maxLik}, 
#'   \pkg{psychotools}, \pkg{drc}, and others
#' \item `evaluate`: \pkg{keras}, \pkg{tensorflow}, \pkg{healthcareai}
#' \item `explain`: \pkg{dplyr}, \pkg{lime}, \pkg{DALEX}
#' \item `fit`: \pkg{keras}
#' \item `glance`: \pkg{broom}
#' \item `learn`: \pkg{grnn}, \pkg{pnn}
#' \item `prune`: \pkg{rpart}, \pkg{dendextend}
#' \item `refit`: \pkg{modeltools}, \pkg{lmSubsets}, \pkg{partykit}, 
#'  \pkg{glogis}, \pkg{fxregime}, and others. 
#' \item `tidy`: \pkg{broom}, \pkg{estimatr}, \pkg{radiant.data}, 
#'  \pkg{permutations}, and others. 
#' \item `train`: \pkg{caret}, \pkg{tensorflow}, \pkg{mlr}, \pkg{RSNNS},
#'  \pkg{Information}, and others. 
#' \item `varImp`: \pkg{caret}, {datafsm}
#' \item `varimp`: \pkg{party}, \pkg{partykit} , \pkg{mboost}, \pkg{semtree}
#' \item `var_imp`: \pkg{datafsm}
#' }
#'
#' @param object,x An object. See Details below. 
#' @param data A data set in a data frame or tibble.
#' @param tree A fitted model object.
#' @param ... Additional arguments to pass to other functions.
#' @examples
#' fit
#'
#' tidy
#' 

#' @export
#' @rdname generics
augment <- function(x, data, ...)
  UseMethod("augment")

#' @export
#' @rdname generics
compile <- function (object, ...)
  UseMethod("compile")

#' @export
#' @rdname generics
estfun <- function (x, ...)
  UseMethod("estfun")

#' @export
#' @rdname generics
evaluate <- function (x, ...)
  UseMethod("evaluate")

#' @export
#' @rdname generics
explain <- function (x, ...)
  UseMethod("explain")

#' @export
#' @rdname generics
fit <- function (object, ...)
  UseMethod("fit")

#' @export
#' @rdname generics
glance <- function(x, ...)
  UseMethod("glance")

#' @export
#' @rdname generics
learn <- function (x, ...)
  UseMethod("learn")

#' @export
#' @rdname generics
prune <- function (tree, ...)
  UseMethod("prune")

#' @export
#' @rdname generics
refit <- function (object, ...)
  UseMethod("refit")


#' @export
#' @rdname generics
tidy <- function (x, ...)
  UseMethod("tidy")

#' @export
#' @rdname generics
train <- function (x, ...)
  UseMethod("train")

#' @export
#' @rdname generics
var_imp <- function (object, ...)
  UseMethod("var_imp")

#' @export
#' @rdname generics
varimp <- function (object, ...)
  UseMethod("var_imp")

#' @export
#' @rdname generics
varImp <- function (object, ...)
  UseMethod("var_imp")
