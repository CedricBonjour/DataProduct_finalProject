Iris Finder Application
========================================================
author: Cedric Bonjour
date:06 August 2020
autosize: true

The Problem we are trying to solve
========================================================

Given an Iris, we want to determine its specie based on its petal width and petal length.




How will we solve it
========================================================


We build an decision tree using the `rpart` algorithm and the iris data set (included in the base R package by default)


How the model is built
========================================================


```r
data("iris")
library(caret)
library(rattle)

m = train(Species ~ ., data=iris, method="rpart", trControl = trainControl(method = "cv"))
```



The Final Model :
=======================================================

```r
fancyRpartPlot(m$finalModel)
```

![plot of chunk unnamed-chunk-2](pres-figure/unnamed-chunk-2-1.png)

