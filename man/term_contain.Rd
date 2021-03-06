% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contrast_utils.R
\name{term_contain}
\alias{term_contain}
\title{Determine which Terms Contain a Term}
\usage{
term_contain(term, factors, dataClasses, term_names)
}
\arguments{
\item{term}{character; name of a model term and one of \code{term_names}.}

\item{factors}{the result of \code{attr(terms_object, "factors")}.}

\item{dataClasses}{the result of
\code{attr(terms(model, fixed.only=FALSE), "dataClasses")}. Note that
\code{fixed.only=FALSE} is only needed for \code{merMod} objects, but does
no harm for \code{lm} objects.}

\item{term_names}{the result of \code{attr(terms_object, "term.labels")}.}
}
\value{
a logical vector indicating for each term in \code{term_names} if
it contains \code{term}.
}
\description{
The definition of \emph{containment} follows from the SAS documentation on
"The Four Types of Estimable Functions".
}
\details{
Containment is defined for two model terms, say, F1 and F2 as:
F1 is contained in F2 (F2 contains F1) if
\enumerate{
\item F1 and F2 involve the same continuous variables (if any)
\item F2 involve more factors than F1
\item All factors in F1 (if any) are part of F2
}
The intercept, though not really a model term, is defined by SAS to be
contained in all factor terms, but it is not contained in any
effect involving a continuous variable.
}
\keyword{internal}
