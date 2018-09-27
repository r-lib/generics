# Modified from sloop::methods_generic
methods_find <- function(x, visible = TRUE) {
  info <- attr(utils::methods(x), "info")
  info$method <- rownames(info)
  rownames(info) <- NULL

  if (visible) {
    info <- info[info$visible, , drop = FALSE]
  }

  # Simply class and source
  generic_esc <- gsub("\\.", "\\\\.", x)
  info$class <- gsub(paste0("^", generic_esc, "[.,]"), "", info$method)
  info$class <- gsub("-method$", "", info$class)
  info$source <- gsub(paste0(" for ", generic_esc), "", info$from)

  # Find help topic
  path <- help_path(info$method)
  pieces <- strsplit(path, "/")
  info$package <- vapply(pieces, last, n = 2, FUN.VALUE = character(1))
  info$topic <- vapply(pieces, last, character(1))

  info[c("method", "class", "package", "topic", "visible", "source")]
}

methods_rd <- function(x) {
  methods <- methods_find(x)
  methods <- methods[!is.na(methods$topic), , drop = FALSE]

  if (nrow(methods) == 0) {
    return("No methods found in currently loaded packages.")
  }

  topics <- split(methods, list(methods$topic, methods$package))
  names(topics) <- NULL

  bullets <- vapply(topics, function(x) {
    link <- paste0("\\code{\\link[", x$package[[1]], "]{", x$topic[[1]], "}}")
    classes <- paste0("\\code{", x$class, "}", collapse = ", ")
    paste0("\\item ", link, ": ", classes)
  }, character(1))

  paste0(
    c(
      "See the following help topics for more details about individual methods:",
      "\\itemize{",
      bullets,
      "}"
    ),
    collapse = "\n"
  )

}

last <- function(x, n = 0) {
  if (length(x) <= n) {
    x[NA_integer_]
  } else {
    x[[length(x) - n]]
  }
}

help_path <- function(x) {
  help <- lapply(x, utils::help)
  vapply(help,
    function(x) if (length(x) == 0) NA_character_ else as.character(x),
    FUN.VALUE = character(1)
  )
}
