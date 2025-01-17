% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/identify_duplicates.R
\name{identify_duplicates}
\alias{identify_duplicates}
\title{Identify Duplicates}
\usage{
identify_duplicates(data)
}
\arguments{
\item{data}{A data frame to check for duplicates.}
}
\value{
A logical vector indicating whether each row is a duplicate (TRUE for duplicates).
}
\description{
This function identifies duplicate rows in a data frame.
}
\examples{
identify_duplicates(data.frame(a = c(1, 2, 2), b = c(3, 4, 4)))
}
