% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/main.R
\name{get_dataset}
\alias{get_dataset}
\title{Download OECD data sets.}
\usage{
get_dataset(dataset, filter = NULL, start_time = NULL, end_time = NULL)
}
\arguments{
\item{dataset}{A string with the code for the desired data set}

\item{filter}{A list of character vectors specifying filters to be applied to
each dimension of the dataset (see \code{examples} below). If no filter is specified,
the function downloads all dimensions unfiltered.}

\item{start_time}{Starting time for data. If left blank, no time filter is
applied (i.e. all observations since the earliest available observation are
downloaded). If end_time is specified, a \code{start_time} must also be specified.}

\item{end_time}{End time for data.}
}
\value{
A data frame
}
\description{
Returns a data frame with the requested data, downloaded through the OECD's API.
}
\examples{
# Get entire dataset
df <- get_dataset("EPL_OV")
head(df, 10)

# Apply filter on dimensions "country" and "series"
df <- get_dataset("EPL_OV", filter = list(c("DEU", "FRA"), c("EPRC_V1", "EPRC_V2")),
       start_time = 2008, end_time = 2010)
head(df, 10)
}
