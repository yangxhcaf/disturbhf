% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recovalarm.R
\name{recovalarm}
\alias{recovalarm}
\title{Sound an alarm for disturbances and determine recovery time}
\usage{
recovalarm(mwdistdiffz.obj, dthresh = c(2), rthresh = c(0.5))
}
\arguments{
\item{mwdistdiffz.obj}{output from \code{mwdistdiffz}}

\item{dthresh}{threshold quantile corresponding to a disturbance alarm}

\item{rthresh}{threshold quantile corresponding to recovery from disturbance}
}
\value{
\code{recovalarm} returns a data frame containing the columns:
\item{dist.date}{time a disturbance was detected}
\item{recov.date}{time a recovery was detected}
\item{tdiff}{difference between \code{recov} and \code{disturb}; the recovery time}
\item{peakz}{peak z-score recorded during disturbance}
\item{peak.date}{date peak z-score was recorded}
}
\description{
\code{recovalarm} interprets output from \code{mwdistdiffz} to detect disturbances and determine recovery time
}
\details{
Values of \code{disturb} and \code{recov} are the times corresponding to the middle of the moving window.
}
\examples{
#need to add some

}
\author{
Jonathan Walter, \email{jaw3es@virginia.edu}
}
