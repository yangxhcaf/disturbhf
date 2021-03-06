% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mwdistdiffzscore.R
\name{mwdistdiffz}
\alias{mwdistdiffz}
\title{Calculate differences in continuous distribution functions between reference and moving window observations}
\usage{
mwdistdiffz(
  testy,
  refy,
  wwidth,
  refwidth = NULL,
  dx = 0.01,
  stride = 1,
  stat = "mean",
  dmin = 0.5
)
}
\arguments{
\item{testy}{a data frame representing the "test" period, i.e., the period over which to search for disturbance and recovery.
It must contain the columns \code{tt} and \code{yy}.
\code{tt} is time in day-of-year format corresponding to observations of \code{yy}.
\code{yy} is a numeric time series.}

\item{refy}{a data frame representiong the refrence period that \code{testy} is compared to.
It must contain the columns \code{tt} and \code{yy}, as in \code{testy}.}

\item{wwidth}{the moving window width, in number of time steps}

\item{refwidth}{the width of the rolling reference window, in number of time steps; if \code{NULL} do not use rolling reference window}

\item{dx}{increment between values at which to evaluate differences between the cdf for \code{yy} and \code{refy}}

\item{stride}{number of time steps by which the moving window advances}

\item{stat}{the summary statistic describing differences in the cdf between \code{yy} and \code{refy}. See details.}

\item{dmin}{the fraction of data that must be present (i.e., non-NA) in test (and, if applicable, adaptive reference) moving windows to procede with computations.}
}
\value{
\code{mwdistdiff} returns a data frame containing the columns:
\item{wstart}{the time corresponding to the beginning (left edge) of the moving window}
\item{wend}{the time corresponding to the end (right edge) of the moving window}
\item{ddiff}{differences from the reference distritbution}
\item{zz}{Z-scores representing the strength of excursion from reference}
}
\description{
\code{mwdistdiffz} computes differences between the continuous distribution functions (cdf) for observations within
a moving window and a reference distribution, and the z-scores of differences relative to samples of the reference distribution.
It is used for identifying recovery times from disturbance in time series data.
}
\details{
The value suppplied to \code{refwidth} determines whether a rolling reference window will be used,
or if all of refy will be used as the reference period.
Currently accepted values for \code{stat} are "mean" and "sum".
\code{testy} must be a regularly spaced time series, but \code{refy} can be irregularly spaced; however, if
there is insufficient data then output will contain \code{NA}s.
\code{dmin} takes into account NAs in time series as well as reference windows overlapping the edges or gaps in the time series.
}
\examples{
#need to add some

}
\author{
Jonathan Walter, \email{jaw3es@virginia.edu}
}
