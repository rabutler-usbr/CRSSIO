% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_crssi.R
\name{write_crssi}
\alias{write_crssi}
\title{Create CRSS Input Trace Files}
\usage{
write_crssi(
  x,
  path,
  file_names = nf_file_names(),
  overwrite = FALSE,
  readme = TRUE
)
}
\arguments{
\item{x}{\link{crssi} object.}

\item{path}{Directory to save files to.}

\item{file_names}{The file names that will be used for each natural flow
site. See \code{\link[=nf_file_names]{nf_file_names()}}.}

\item{overwrite}{Boolean. If \code{TRUE} and files already exists in
\code{path}/traceN, the files will be overwritten.}

\item{readme}{Boolean. If \code{TRUE} also create a README file in \code{path}.}
}
\description{
\code{write_crssi()} creates the required CRSS input files from a \link{crssi} object.
In addition to the files for the 29 natural flow inputs (specified by
\code{file_names}), four additional files are written for each trace. See
\emph{Details} for a description of these slots. The files are formatted and saved
in a format expected by CRSS.
}
\details{
The four additional slots are:
\itemize{
\item \strong{Trace number:} The trace numbers are intuitive, i.e., they are integers
from 1 to N where N is the trace number.
\item \strong{Scenario number:} The scenario number provides the user with a numeric
representation of which supply scenario is used. See the
\emph{Scenario Numbering Convention} section in \link{crssi} or the package's
\href{https://github.com/BoulderCodeHub/CRSSIO/wiki/Scenario-Numbering-Convention}{wiki}
for details on the scenario number.
\item \strong{"Hydrology increment" number:} The hydrology increment data sets the random number
generator in CRSS. This seed value for each year and trace is created for
each trace folder.
\item \strong{Sacramento year type index:} The Sacramento Year type index for each year
and trace (stored in the \code{crssi} object.) See \link{crssi}.
}

See \link{CRSSIO} for a description of the package options that determine these
slots' file names.
}
