test_that("fancy_color_palette returns correct lengths", {
  expect_length(rda_colors("primary"), 5)
  expect_length(rda_colors("secondary"), 5)
  expect_length(rda_colors("all"), 10)
})


test_that("fancy_color_palette contains valid hex codes", {
  hex_ok <- function(x) all(grepl("^#[0-9A-Fa-f]{6}$", x))
  expect_true(hex_ok(fancy_color_palette("primary")))
  expect_true(hex_ok(fancy_color_palette("secondary")))
})