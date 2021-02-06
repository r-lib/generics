test_that("multiple methods but same rdname are comma separated", {
  local_load_all("testSameRd")
  expect_snapshot(methods_rd("same_rd_name"))
})
