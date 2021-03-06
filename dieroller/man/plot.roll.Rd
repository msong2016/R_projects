% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot-roll.R
\name{plot.roll}
\alias{plot.roll}
\title{Plot of object roll}
\usage{
\method{plot}{roll}(x, times = 50)
}
\arguments{
\item{x}{an object of class \code{"roll"}}

\item{times}{a nuemeric value that specifies number of rolls}
}
\description{
Plots the relative frequencies of a series of roll
}
\examples{
 \dontrun{
 # create a fair_die and toss it 50 times
 fair_die <- die()
 fair_50rolls <- roll(fair_die, times = 50)
 plot(fair_50rolls)

 # plot method
 plot(fair500, 500)
 }
}
