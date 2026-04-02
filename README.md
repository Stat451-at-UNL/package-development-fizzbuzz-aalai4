
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fizzbuzzing

<!-- badges: start -->

[![R-CMD-check](https://github.com/stat-assignments/fizzbuzzing/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/stat-assignments/fizzbuzzing/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of this package is to practice making R packages and to profile
functions for their efficiency.

## The `fizzbuzz` function

The first part of this assignment deals with function writing.
Specifically, a function for the (in)famous (and by now probably
retired) interview question of
[`fizzbuzz`](https://leetcode.com/problems/fizz-buzz/description/).
‘fizzbuzz’ of the game used in elementary school to practice
multiplication tables. Given two numbers $a$ ad $b$ `fizzbuzz(x, a, b)`
is supposed to return ‘fizz’ if integer value $x$ is divisible by $a$,
‘buzz’ if integer value $x$ is divisible by $b$, ‘fizzbuzz’ if integer
value $x$ is divisible by $a$ and $b$, and the value of $x$ otherwise.

1.  The file [fizzbuzz.R](R/fizzbuzz.R) contains three implementations
    of versions of `fizzbuzz`. Run all three versions of the function
    for `x = 1:30` and make sure that the output is correct.

2.  Which of the three options is the fastest? Show results of
    benchmarking the results (30 values might not be enough to show
    differences - comment on how you work around that) and interpret
    within the context of what you know about the R language.

3.  Write a Cpp version of `fizzbuzz` and compare its performance to the
    three R implementations.

## Packaging

This repository has the form of an R package, but it is far from passing
R CMD check. Here, we are going through the process of getting the
package into a better state.

1.  For all functions, write the appropriate roxygen documentation and
    add an example for each of your functions (write an R wrapper
    function that calls your Cpp routine of fizzbuzz).

2.  Ensure that the DESCRIPTION file contains all of the dependencies
    (try to minimize the number of dependencies).

3.  Write a set of tests for your functions. What coverage do you get?
    Run a report with `covr::report`.

4.  Ensure that your package passes R CMD check.
