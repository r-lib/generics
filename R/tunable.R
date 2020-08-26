#' Declare tunable parameters
#'
#' Returns information on potential hyper-parameters that can be optimized.
#'
#' @param x An object, such as a recipe, recipe step, workflow, or model
#' specification.
#' @param ... Other arguments passed to methods
#'
#'@return A tibble with a column for the parameter `name`, information on the
#'  _default_ method for generating a corresponding parameter object, the
#'  `source` of the parameter (e.g. "recipe", etc.), and the `component` within
#'  the source. For the `component` column, a little more specificity is given
#'  about the location of the parameter (e.g. "step_normalize" or recipes or
#'  "boost_tree" for models). The `component_id` column contains the unique step
#'  `id` field or, for models, a logical for whether the model specification
#'  argument was a main parameter or one associated with the engine.
#' @details
#' For a model specification, an engine must be chosen.
#'
#' If the object has no tunable parameters, a tibble with no rows is returned.
#'
#' The information about the default parameter object takes the form of a
#' named list with an element for the function call and an optional element for
#' the source of the function (e.g. the `dials` package). For model
#' specifications, If the parameter is unknown to the underlying `tunable`
#' method, a `NULL` is returned.
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("tunable")}
#'
#' @export
tunable <- function(x, ...) {
  UseMethod("tunable")
}
