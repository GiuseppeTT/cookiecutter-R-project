# File description:
# This file is necessary if your tests/testthat/ folder is empty, but you may
# keep it if the folder is not empty. This is because the {testthat} R package
# fails if the tests/testthat/ folder is empty.

context("Dummy test")
library(MyCoolProject)

test_that("Algebra works", {
  expect_equal(1 + 1, 2)
})
