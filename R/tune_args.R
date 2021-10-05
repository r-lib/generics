#' Determine arguments tagged for tuning
#'
#' `tune_args()` takes an object such as a model specification or a recipe and
#' returns a tibble of information on all possible tunable arguments and
#' whether or not they are actually tunable.
#'
#' @param object A `model_spec`, `recipe`, `workflow`, or other object.
#' @param ... Other arguments passed to methods.
#'
#' @details
#' The `source` column is determined differently for a
#' `model_spec` or a `recipe` (with additional detail on the type).
#'
#' The `id` field has any identifier that was passed from [tune::tune()] (e.g.
#' `tune("some note")`). If no additional detail was used in that function,
#' the `id` field reverts to the name of the parameters.
#'
#' @return A tibble with columns for the parameter name (`name`), whether it
#' contains _any_ tunable value (`tune`), the `id` for the parameter (`id`),
#' and the information on where the parameter was located (`source`).
#'
#' @section Methods:
#' \Sexpr[stage=render,results=rd]{generics:::methods_rd("tune_args")}
#'
#' @export
tune_args <- function(object, ...) {
  UseMethod("tune_args")
}
