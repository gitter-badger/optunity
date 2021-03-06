% Generated by roxygen2 (4.0.2): do not edit by hand
\name{generate_folds}
\alias{generate_folds}
\title{Generates folds for cross-validation.}
\usage{
generate_folds(num_instances, num_folds = 5, num_iter = 1, strata = NULL,
  clusters = NULL)
}
\arguments{
\item{num_instances}{number of samples}

\item{num_folds}{number of folds}

\item{num_iter}{number of iterations (for doing repeated cross-validation)}

\item{strata}{(optional) list of strata, each strata is a list of samples ids that will be stratified (balanced) among the folds}

\item{clusters}{(optional) list of clusters, each cluster is a list of samples that always goes to the same fold}
}
\value{
matrix of folds, size: num_instances x num_iter
}
\description{
Generates folds for cross-validation.
}
\examples{
folds1 = generate_folds(num_instances = 20, num_folds = 5)
folds2 = generate_folds(num_instances = 20, num_folds = 5, num_iter=2)
## stratified folds
folds3 = generate_folds(num_instances = 100, strata = list(1:50, 51:100))
}
\seealso{
\code{\link{cv.setup}} for full cross-validation approach
}

