% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalize.R
\name{normalize}
\alias{normalize}
\title{Normalization Function}
\usage{
normalize(data)
}
\arguments{
\item{data}{A numeric vector to be normalized.}
}
\value{
A numeric vector with normalized values in the range \link{0, 1}.
}
\description{
This function normalizes a numeric vector to a range of \link{0, 1} using the formula:
x' = (x - min(x)) / (max(x) - min(x))
}
\examples{
normalize(c(10, 20, 30, 40, 50))
normalize(c(5, 5, 5, 5))
normalize(c(10, 20, NA, 30))
}
