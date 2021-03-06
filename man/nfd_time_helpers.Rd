% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/has_overlapping_ts.R, R/nfd_trim_ts.R,
%   R/reindex.R
\name{has_overlapping_ts}
\alias{has_overlapping_ts}
\alias{nfd_trim_ts}
\alias{reindex}
\alias{reindex.crssi}
\alias{reindex.nfd}
\alias{reindex.xts}
\title{Helper Functions for Natural Flow Data Time Series}
\usage{
has_overlapping_ts(x, exact = TRUE)

nfd_trim_ts(x)

reindex(x, start_year, master_ts = "monthly")

\method{reindex}{crssi}(x, start_year, master_ts = "monthly")

\method{reindex}{nfd}(x, start_year, master_ts = "monthly")

\method{reindex}{xts}(x, start_year, ...)
}
\arguments{
\item{x}{An object inheriting from \link{nfd}, \link{crss_nf}, or \link{crssi}.}

\item{exact}{Boolean. Do the annual and monthly data have to overlap
"exactly". See \emph{Details.}}

\item{start_year}{The new starting year as a string or numeric.}

\item{master_ts}{Ignored unless \code{x} has annual and monthly data. If \code{x} does
contain both, the time step specified here is the "master" time step, i.e.,
it is the time step the \code{start_year} is applied to. Then, the other
time step's start year is computed based on keeping the relative difference
in the start year's the same.}

\item{...}{Other parameters passed to function. Ignored if \code{x} is an \code{xts}
object.}
}
\description{
The objects that store natural flow data (\link{nfd}, \link{crss_nf}, or \link{crssi}) all
include multiple time series, which are internally stored as \code{xts} objects.
These functions help modify or query the time step component of these
objects.
}
\details{
\code{has_overlapping_ts()} determines whether the the annual and monthly data
within the object are overlapping. If \code{exact} is \code{TRUE}, the start and end
time step for the monthly and annual data must match "exactly". This means for
an object storing calendar year data that the monthly data will start in
January, year1 and end in December, year2 while the annual data must start
in December, year1 and end in December, year2. The analogous is true for
water year data, except the start and end months are October and September,
respectively.

If the object contains only monthly, or only annual data,
\code{has_overlapping_ts()} will always return TRUE.

\code{nfd_trim_ts()} trims the object so that it only contains an "exact"
overlapping set of monthly data, that is it starts and ends in
January and December for calendar year data or October and September for
water year data. Additionally, if object contains annual and monthly data,
those data are trimmed to only include data for the same years. If the object
only includes annual data, no trimming is performed.

\code{reindex()} changes the time steps, i.e., indeces, of natural flow data as
stored in \link{nfd}, \link{crss_nf}, or \link{crssi} objects. The time steps are changed
to start in the specified \code{start_year}. This change applies to all time
series data stored in the object, i.e., monthly and annual data and
the Sacramento year type.
}
