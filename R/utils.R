local_load_all <- function(path, env = parent.frame()) {
  pkgload::load_all(path, quiet = TRUE)
  withr::defer(pkgload::unload(path), envir = env)
}
