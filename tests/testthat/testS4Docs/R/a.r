#' An s4 generic
#'
#' @export
#' @aliases multi_method,ANY,ANY-method
setGeneric("multi_method", function(x, y) {
  x
})

#' @rdname multi_method
#' @export
setMethod("multi_method", signature(x = "numeric"), function(x, y) {
  x
})

#' @rdname multi_method
#' @export
setMethod("multi_method", signature(x = "numeric", y = "integer"), function(x, y) {
  x
})

