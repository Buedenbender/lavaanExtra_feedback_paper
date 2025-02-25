% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nice_fit.R
\name{nice_fit}
\alias{nice_fit}
\title{Extract relevant fit indices from lavaan model}
\usage{
nice_fit(model, model.labels, nice_table = FALSE, stars = FALSE)
}
\arguments{
\item{model}{lavaan model object(s) to extract fit indices from}

\item{model.labels}{Model labels to use. If a named list is provided
for \code{model}, default to the names of the list. Otherwise, if the list
is unnamed, defaults to generic numbering.}

\item{nice_table}{Logical, whether to print the table as a
\code{rempsyc::nice_table} as well as print the
reference values at the bottom of the table.}

\item{stars}{Logical, if \code{nice_table = TRUE}, whether to display
significance stars (defaults to \code{FALSE}).}
}
\value{
A dataframe, representing select fit indices (chi2, df, chi2/df,
p-value of the chi2 test, CFI, TLI, RMSEA and its 90\% CI, SRMR,
AIC, and BIC).
}
\description{
Compares fit from one or several lavaan models. Also
optionally includes references values. The reference fit values are
based on Schreiber et al. (2006).
}
\examples{
\dontshow{if (requireNamespace("lavaan", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
(latent <- list(
  visual = paste0("x", 1:3),
  textual = paste0("x", 4:6),
  speed = paste0("x", 7:9)
))

(regression <- list(
  ageyr = c("visual", "textual", "speed"),
  grade = c("visual", "textual", "speed")
))

HS.model <- write_lavaan(latent = latent, regression = regression)
cat(HS.model)

library(lavaan)
fit <- sem(HS.model, data = HolzingerSwineford1939)
nice_fit(fit)
\dontshow{\}) # examplesIf}
}
\references{
Schreiber, J. B. (2017). Update to core reporting practices in
structural equation modeling. \emph{Research in social and administrative pharmacy},
\emph{13}(3), 634-643. https://doi.org/10.1016/j.sapharm.2016.06.006
}
\keyword{CFA}
\keyword{analysis}
\keyword{equation}
\keyword{lavaan}
\keyword{modeling}
\keyword{path}
\keyword{structural}
