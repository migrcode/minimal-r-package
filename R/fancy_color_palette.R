#' fancy_color_palette: curated palette
#'
#' Returns a vector of hex color codes from a curated 10-color palette.
#' Five colors form the **primary** set and five the **secondary** set.
#'
#' @param set Which set to return: one of "primary", "secondary", or "all".
#' Partial matching is allowed. Defaults to "primary".
#'
#' @return A character vector of hex color codes.
#' @examples
#' fancy_color_palette("primary")
#' fancy_color_palette("secondary")
#' fancy_color_palette("all")
#' @export
fancy_color_palette <- function(set = c("primary", "secondary", "all")) {
  set <- match.arg(set)
  
  
  # 10-color palette (accessible-friendly, high contrast range)
  prim <- c(
    "#2E86AB", # blue
    "#F18F01", # orange
    "#C73E1D", # brick
    "#6A994E", # green
    "#6F2DBD" # purple
  )
  
  
  sec <- c(
    "#FFCAD4", # rose tint
    "#00A6A6", # teal
    "#FFD166", # warm yellow
    "#3D405B", # slate
    "#B8B8FF" # periwinkle
  )
  
  
  switch(set,
         primary = prim,
         secondary = sec,
         all = c(prim, sec))
}