[![Build Status](https://travis-ci.org/tidymodels/modelgenerics.svg?branch=master)](https://travis-ci.org/tidymodels/modelgenerics)
[![Coverage status](https://codecov.io/gh/tidymodels/modelgenerics/branch/master/graph/badge.svg)](https://codecov.io/github/tidymodels/modelgenerics?branch=master)
![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)

`modelgenerics` is designed to alleviate the situation where multiple packages use the same class. For example, if two packages have methods for a `fit` class, there will be conflicts when both packages are loaded. One approach would be for one package to import the other but this may result in many additional package dependencies during installation. 

`modelgenerics` is a simple, lightweight packages that contains S3 generic definitions that other packages can use to avoid this problem. Some examples are:

```{r}
> library(modelgenerics)
> 
> fitfunction (object, ...) {    UseMethod("fit")}<bytecode: 0x7f8c320ecd08><environment: namespace:modelgenerics>> tidyfunction (x, ...) {    UseMethod("tidy")}<bytecode: 0x7f8c2fac2e20><environment: namespace:modelgenerics>
```

To use this in your package, It is suggested that, to do so by ***importing*** the package and re-exporting the method of interest. For example, if a S3 `fit ` method were being used, the `roxygen2` code to do this would be 

``` 
#' @importFrom modelgenerics explain
#' @export
modelgenerics::explain
```

As an example, the [`recipes`](https://github.com/tidymodels/recipes) package defines a number of `tidy` S3 methods by importing this package (whereas it previously depended on `broom`). 


To install it `modelgenerics`, use:

``` r
require("devtools")
install_github("tidymodels/modelgenerics")
```
