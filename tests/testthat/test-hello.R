test_that("multiplication works", {
  expect_equal(hello(), 3)
  expect_lt(hello(), 4)
  expect_gt(hello(), 2)
})
