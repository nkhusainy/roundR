#' Round to the nearest integer
#'
#' The [base::round()] function rounds the number `1.5` to `2` and the number
#' `2.5` also to `2`, because of the IEC 60559 standard. This function provides
#' an integer rounding alternative to [base::round()].
#'
#' @param x A numeric element or vector to round to the nearest integer
#' @returns An integer element or vector
#'
#' @author Gerko Vink \email{g.vink@uu.nl} and Hanne Oberman
#' \email{h.i.oberman@uu.nl}
#'
#' #' @examples
#' library(dplyr)
#' # unexpected rounding
#' c(0.5, 1.5, 2.5, 3.5) |> round()
#' # rounding to nearest integer
#' c(0.5, 1.5, 2.5, 3.5) |> round_to_integer()
#'
#' @export
round_to_integer <- function(x){
  # calculate difference between the value and the nearest integer below
  diff <- x - floor(x)
  # for differences < 0.5, return the nearest integer below
  # for differences => 0.5, return the next nearest integer
  ifelse(dplyr::between(diff, 0.5, 1), ceiling(x), floor(x))
}
