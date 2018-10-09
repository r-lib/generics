#' Generic test for multiple methods on the same rd file
#'
#' Should be comma separated
#'
#' @param x A parameter
#'
#' @rdname same_rd_name
#'
same_rd_name <- function(x) {
  UseMethod("same_rd_name")
}

#' Test default
#'
#' @param x A parameter
#'
#' @rdname same_rd_name-2
same_rd_name.default <- function(x) {
  x
}

#' Test data frame
#'
#' @param x A parameter
#'
#' @rdname same_rd_name-2
same_rd_name.data.frame <- function(x) {
  x
}
