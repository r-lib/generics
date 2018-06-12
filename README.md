`modelgenerics` is designed to alleviate the situation where multiple packages use the same method for different classes. For example, if two packages have a `fit` method, there will be conflicts when both packages are loaded. One approach would be for one package to import the other but this may result in many additional package dependencies during installation. 

`modelgenerics` is a simple, lightweight packages that contains generic definitions that other packages can use to avoid this problem and includes:

```{r}
library(modelgenerics)

fit

train

varImp
```
