test_that("generics methods can be reexported and extended", {
  local_load_all("testGenericsExtension")
  expect_snapshot(methods_rd("tidy"))
})
