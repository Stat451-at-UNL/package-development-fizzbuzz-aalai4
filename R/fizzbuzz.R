#' FizzBuzz for a Single Value
#'
#' Determines if a number is divisible by 3, 7, both, or returns the number.
#'
#' @param x A single integer value to check
#'
#' @return Character string ("fizz", "buzz", "fizzbuzz") or the original value
#'
#' @export
#'
#' @examples
#' fizzbuzz1(15)
#' fizzbuzz1(3)
#' fizzbuzz1(7)
#' fizzbuzz1(2)
fizzbuzz1 <- function(x) {
  # we assume x is a single number
  div3 <- (x %% 3) == 0
  div7 <- (x %% 7) == 0

  if (div3 & div7) return("fizzbuzz")
  if (div3) return("fizz")
  if (div7) return("buzz")
  return(x)
}

#' FizzBuzz Iterator (Iterative)
#'
#' Applies fizzbuzz logic to a range of values using an explicit loop.
#'
#' @param a Lower bound of range
#' @param b Upper bound of range
#'
#' @return Character vector with fizzbuzz results
#'
#' @export
#'
#' @examples
#' fizzbuzz(1, 30)
fizzbuzz <- function(a, b) {
  # we assume a and b are integer values

  idx <- a:b
  result <- rep(NA, length(idx))
  for (i in 1:length(idx))
    result[i] <- fizzbuzz1(idx[i])

  result
}


#' FizzBuzz Iterator (Recursive)
#'
#' Applies fizzbuzz logic to a range of values using recursion.
#'
#' @param a Lower bound of range
#' @param b Upper bound of range
#'
#' @return Character vector with fizzbuzz results
#'
#' @export
#'
#' @examples
#' fizzbuzz_no_iter(1, 30)
fizzbuzz_no_iter <- function(a, b) {
  lower <- min(a, b)
  upper <- max(a, b)

  if (lower == upper) return(fizzbuzz1(lower))

  return( c(fizzbuzz1(lower), fizzbuzz_no_iter(lower+1, upper)))
}


#' FizzBuzz Iterator (Vectorized)
#'
#' Applies fizzbuzz logic to a range of values using vectorized operations.
#'
#' @param a Lower bound of range
#' @param b Upper bound of range
#'
#' @return Character vector with fizzbuzz results
#'
#' @export
#'
#' @examples
#' fizzbuzz_vector(1, 30)
fizzbuzz_vector <- function(a, b) {
  # create a vector with numbers from a to b
  x <- seq.int(from = min(a,b), to = max(a,b))
  res <- x

  res[x %% 3 == 0] <- "fizz"
  res[x %% 7 == 0] <- "buzz"
  res[(x %% 3 == 0) & (x %% 7 == 0)] <- "fizzbuzz"

  res
}
