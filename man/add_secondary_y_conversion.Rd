% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_secondary_y_conversion.R
\name{add_secondary_y_conversion}
\alias{add_secondary_y_conversion}
\title{Add a Secondary Y-Axis to a ggplot, Converting from the Primary Axis Units}
\usage{
add_secondary_y_conversion(
  gg,
  from_unit,
  to_unit,
  sec_name = to_unit,
  digits = "get_decimals"
)
}
\arguments{
\item{gg}{A ggplot}

\item{from_unit}{The primary axis units}

\item{to_unit}{The secondary axis units}

\item{sec_name}{The name of the secondary axis}

\item{digits}{The number of digits to the right of the decimal place to show
on the secondary axis. See details.}
}
\description{
\code{add_secondary_y_conversion()} adds a secondary y-axis to a ggplot. While it is
intended to be used to add a metric equivelent axis, it will work for any
conversion that is handled by \code{\link[udunits2:ud.convert]{udunits2::ud.convert()}}.
}
\details{
\describe{
\item{\code{digits}}{Either a number or the string \code{"get_decimals"}. If a number,
then that is the number of digits to the right of the decimal place that will
be shown. If \code{"get_decimals"}, then the secondary axis will show the same
number of digits to the right of the decimal place as the primary axis does.}
\item{units}{For \code{from_unit} and \code{to_unit}, the following are common units
used in CRSS that will work with \code{\link[udunits2:ud.convert]{udunits2::ud.convert()}}: "acre_feet",
"m^3", "acre_feet/month", "acre_feet/year", "m^3/s", "km^3/s", "1e6m^3/s".}
}
}
\examples{
library(ggplot2)
df <- data.frame(year = 2020:2029, elev = rnorm(10, 3580, 10))
gg <- ggplot(df, aes(year, elev)) + 
  geom_line()
add_secondary_y_conversion(gg, "feet", "meters")

}
