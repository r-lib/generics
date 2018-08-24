
[![Build
Status](https://travis-ci.org/r-lib/generics.svg?branch=master)](https://travis-ci.orgr-lib/generics)
[![Coverage
status](https://codecov.io/gh/r-lib/generics/branch/master/graph/badge.svg)](https://codecov.io/github/r-lib/generics?branch=master)
![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)

generics is designed to alleviate the situation where multiple packages
use the same class. For example, if two packages have methods for a
`fit` class, there will be conflicts when both packages are loaded. One
approach would be for one package to import the other but this may
result in many additional package dependencies during installation.

## Installation

To install generics, use:

``` r
# install.packages("devtools")
devtools::install_github("r-lib/generics")
```

## Usage

generics is a simple, lightweight package that contains S3 generics to
be used by other packages. Some examples are:

``` r
library(generics)

fit
#> function (object, ...) {
#>   UseMethod("fit")
#> }
#> <bytecode: 0x7fc20584e458>
#> <environment: namespace:generics>

tidy
#> function (x, ...) {
#>   UseMethod("tidy")
#> }
#> <bytecode: 0x7fc205bbb8c0>
#> <environment: namespace:generics>
```

To use this in your package we recommend that you import and re-export
the generics of interest. For example, if you want to provide a method
for the S3 `fit()` generic, you’d using the following the `roxygen2`
code:

``` r
#' @importFrom generics explain
#' @export
generics::explain
#> function (x, ...) {
#>   UseMethod("explain")
#> }
#> <bytecode: 0x7fc209025490>
#> <environment: namespace:generics>
```

As an example, the [recipes](https://github.com/tidymodels/recipes)
package defines a number of `tidy()` S3 methods by importing this
package (whereas it previously depended on `broom`).

It is **also highly recommended** that you add an *alias* in the
documentation of your method for the generic, such as:

``` r
#' @alias explain
```

In that way, when someone uses `?explain`, your specific method will
show up as one of the man page options.
