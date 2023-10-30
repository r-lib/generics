#' @importFrom generics tidy
#' @export
generics::tidy

#' Test default
#'
#' @param x A parameter
#'
#' @rdname tidy-special
#'
#' @export
tidy.special_method <- function(x, ...) {
  x
}
