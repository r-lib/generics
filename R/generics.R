#' @import methods
NULL

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
#' In this package, snake case is preferred. The generics `varimp`
#'  and `varImp` are provided to maintain compatibility with
#'  existing packages (e.g. `party` and `caret`). Both refer to
#'  `var_imp`. In this way, new methods for `var_imp` can be used if
#'  your package has a `varimp` or `varImp` generic.
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
#' * `varImp`: \pkg{caret}, \pkg{datafsm}
#' * `varimp`: \pkg{party}, \pkg{partykit} , \pkg{mboost}, \pkg{semtree}
#' * `var_imp`: \pkg{datafsm}
#'
#' \pkg{modegenerics} defines the classes using S4 but standard
#'  generic S3 methods are also produced. 
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
setGeneric("augment", 
           function(x, ...)
             standardGeneric("augment"))

#' @export
#' @rdname generics
setGeneric("compile", 
           function(object, ...)
             standardGeneric("compile"))

#' @export
#' @rdname generics
setGeneric("estfun", 
           function(x, ...)
             standardGeneric("estfun"))

#' @export
#' @rdname generics
setGeneric("evaluate", 
           function(x, ...)
             standardGeneric("evaluate"))

#' @export
#' @rdname generics
setGeneric("explain", 
           function(x, ...)
             standardGeneric("explain"))

#' @export
#' @rdname generics
setGeneric("fit", 
           function(object, ...)
             standardGeneric("fit"))

#' @export
#' @rdname generics
setGeneric("glance", 
           function(x, ...)
             standardGeneric("glance"))

#' @export
#' @rdname generics
setGeneric("learn", 
           function(x, ...)
             standardGeneric("learn"))

#' @export
#' @rdname generics
setGeneric("prune", 
           function(tree, ...)
             standardGeneric("prune"))

#' @export
#' @rdname generics
setGeneric("refit", 
           function(object, ...)
             standardGeneric("refit"))

#' @export
#' @rdname generics
setGeneric("tidy", 
           function(x, ...)
             standardGeneric("tidy"))

#' @export
#' @rdname generics
setGeneric("train", 
           function(x, ...)
             standardGeneric("train"))

#' @export
#' @rdname generics
setGeneric("var_imp", 
           function(object, ...)
             standardGeneric("var_imp"))

#' @export
#' @rdname generics
suppressWarnings(
  setGeneric("varimp", 
             function(object, ...)
               standardGeneric("var_imp"))
)

#' @export
#' @rdname generics
suppressWarnings(
  setGeneric("varImp", 
             function(object, ...)
               standardGeneric("var_imp"))
)
