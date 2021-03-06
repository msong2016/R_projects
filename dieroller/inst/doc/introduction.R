## ------------------------------------------------------------------------
knitr::opts_chunk$set(collapse = T, comment = "#>")
library(dieroller)

## ------------------------------------------------------------------------
mydie <- die()
mydie


## ------------------------------------------------------------------------
loaded <- die(sides = c('i', 'ii', 'iii', 'iv', 'v', 'vi'), prob = c(0.1, 0.2, 0.1, 0.2, 0.1, 0.3))
loaded

## ------------------------------------------------------------------------
roll100 <- roll(mydie, times = 100)
roll100

## ------------------------------------------------------------------------
summary(roll100)

## ------------------------------------------------------------------------
plot(roll100)

