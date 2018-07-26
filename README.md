![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)

`modelgenerics` is designed to alleviate the situation where multiple packages use the same class. For example, if two packages have methods for a `fit` class, there will be conflicts when both packages are loaded. One approach would be for one package to import the other but this may result in many additional package dependencies during installation. 

`modelgenerics` is a simple, lightweight packages that contains S3 and S4 generic definitions that other packages can use to avoid this problem. Some examples are:

```{r}
> library(modelgenerics)
> 
> fit
standardGeneric for "fit" defined from package "modelgenerics"

function (object, ...) 
standardGeneric("fit")
<bytecode: 0x10889d930>
<environment: 0x108899b98>
Methods may be defined for arguments: object
Use  showMethods("fit")  for currently available ones.
> 
> train
standardGeneric for "train" defined from package "modelgenerics"

function (x, ...) 
standardGeneric("train")
<bytecode: 0x102993990>
<environment: 0x10298cb80>
Methods may be defined for arguments: x
Use  showMethods("train")  for currently available ones.
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
