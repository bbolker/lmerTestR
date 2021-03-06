% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/step.R
\name{step}
\alias{step}
\alias{step.default}
\title{Generic Step Function}
\usage{
step(object, ...)

\method{step}{default}(object, ...)
}
\arguments{
\item{object}{a model object.}

\item{...}{currently not used.}
}
\description{
Generic step function with default method \code{stats::step}. This
construction ensures that \code{stats::step} still works on \code{lm}
objects etc. after loading the \pkg{lmerTest} package.
}
\seealso{
\code{\link[=step.lmerModLmerTest]{step}}
}
\author{
Rune Haubo B. Christensen
}
\keyword{internal}
