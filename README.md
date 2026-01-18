
<!-- README.md is generated from README.Rmd. Please edit that file -->

# roundR

<!-- badges: start -->
<!-- badges: end -->

The goal of roundR is to offer a numeric rounding to the nearest
integer, as opposed to the \[base::round()\] default to round to the
nearest *even* integer.

## Installation

You can install the development version of roundR like so:

``` r
# install.packages("devtools")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(roundR)
## basic example code
round(2.5)
#> [1] 2
round_to_integer(2.5)
#> [1] 3
```
