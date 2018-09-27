#' generics: common S3 generics
#'
#' These are generic functions that can be used to minimize
#'  package dependencies when multiple packages have the same
#'  method.
#'
#' An attempt was made to use generic class signatures that were
#'  consistent with existing code. For example, \pkg{dplyr} and
#'  \pkg{lime} both have `explain()` methods that do very different
#'  things but both take `x` as their main object. Even though `x`
#'  would be different in those cases, this package provides access
#'  to the S3 generic so that other packages that may want to create
#'  `explain()` methods for their objects can do so without loading
#'  either of the other packages.
#'
#' For example, if a new `tidy()` method is being developed for a
#'  package, this lightweight package can be the required dependency
#'  to have access to the generic method (instead of depending on
#'  \pkg{broom} and installing its dependencies).
#'
#' @keywords internal
"_PACKAGE"
